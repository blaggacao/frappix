let
  # Importing dependencies from inputs.
  inherit (inputs) haumea;
  inherit (inputs.std) dmerge;
  inherit (inputs.nixpkgs) runCommand remarshal lib;

  # The domain used in the environment.
  domain = "frappix.example.com";

  # Read a YAML file into a Nix datatype using IFD (Import From Derivation).
  # This function converts a YAML file to a JSON format and then reads it into a Nix datatype.
  #
  # Arguments:
  #   - path: Path to the YAML file.
  #
  # Returns:
  #   - A Nix datatype converted from the YAML file.
  #
  # Type:
  #   Path -> a :: Nix
  readYAML = path: let
    jsonOutputDrv =
      runCommand "from-yaml"
      {nativeBuildInputs = [remarshal];}
      "remarshal -if yaml -i \"${path}\" -of json -o \"$out\"";
  in
    builtins.fromJSON (lib.readFile jsonOutputDrv);

  # Constructs variable names and values based on file name matches.
  #
  # Arguments:
  #   - matches: A list containing environment, tenant, and region information.
  #
  # Returns:
  #   - A set of variables including env, name, namespace, stack, region, and release.
  #
  # Type:
  #   [String] -> { env: String, name: String, namespace: String, stack: String, region: String, release: String }
  mkNamingScheme = matches: rec {
    env = lib.elemAt matches 0;
    tenant = lib.elemAt matches 1;
    region = lib.elemAt matches 2;
    namespace = env + "-" + tenant;
    name = namespace + "-frappix";
  };

  # Checks if a functor is a component requiring application of the naming scheme.
  #
  # Arguments:
  #   - f: Functor to check.
  #
  # Returns:
  #   - Boolean indicating if the attribute set is a wrapped component.
  #
  # Type:
  #   { __init_naming_scheme: Bool, ... } -> Bool
  doesComponentRequireNamingScheme = c: c ? __init_naming_scheme;

  # Marks the function as a component which still requires application of the naming scheme by transforming it into a functor and adding an `__init_naming_scheme` attribute.
  #
  # Arguments:
  #   - f: Function to mark as wrapped.
  #
  # Returns:
  #   - A new functor with the `__init_naming_scheme` attribute set to `true`.
  #
  # Type:
  #   (a -> b) -> (a -> b) & { __init_naming_scheme: Bool, ... }
  markComponentRequiresNamingScheme = c: (lib.setFunctionArgs c (lib.functionArgs c)) // {__init_naming_scheme = true;};

  # Loads a component by applying a naming scheme to it.
  #
  # Arguments:
  #   - f: Function to apply.
  #   - namingSchere: naming scheme to use.
  #
  # Returns:
  #   - The loaded component.
  #
  # Type:
  #   (a -> b) -> { c: d, ... } -> e
  applyNamingSchemeToComponent = namingScheme: c: lib.pipe c [lib.functionArgs (lib.mapAttrs (name: _: namingScheme.${name})) c];

  # Converts a function to a component if it meets specific criteria.
  #
  # Arguments:
  #   - f: Function to convert.
  #
  # Returns:
  #   - The converted component or the original function if criteria are not met.
  #
  # Type:
  #   (a -> b) -> (a -> b)
  convertToComponent = f: let
    availableAttributes = lib.attrNames (mkNamingScheme null);
    functionAttributes = lib.attrNames (lib.functionArgs f);
    excessAttributes = lib.subtractLists availableAttributes functionAttributes;
    ok =
      lib.isFunction f
      && (! lib.mutuallyExclusive functionAttributes availableAttributes)
      && (
        if excessAttributes == []
        then true
        else
          abort ''

            Naming scheme function signature
              ${lib.generators.toPretty {multiline = false;} functionAttributes}
            has more elements than the available ones
              ${lib.generators.toPretty {multiline = false;} availableAttributes}.
          ''
      );
  in (
    if ok
    then markComponentRequiresNamingScheme f
    else f
  );

  # Applies a naming schemes to a tree of components.
  #
  # Arguments:
  #   - namingScheme: The naming scheme to apply to each component.
  #
  # Returns:
  #   - A component tree with the naming scheme applied to all of its nodes.
  #
  # Type:
  #   { a: b, ... } -> { a: b, ... }
  applyNamingSchemeToComponentTree = namingScheme:
    lib.mapAttrsRecursiveCond
    # apply recursively until
    (c: (!doesComponentRequireNamingScheme c))
    (p: c:
      if doesComponentRequireNamingScheme c
      then applyNamingSchemeToComponent namingScheme c
      else c);

  # Creates components from a root and naming scheme.
  #
  # Arguments:
  #   - root: Root component.
  #   - namingScheme: Naming scheme to use.
  #
  # Returns:
  #   - A set of chainable components.
  #
  # Type:
  #   { a: b, ... } -> { a: b, ... } -> { WithBase: c, WithRegion: c, WithNamespace: c, WithCardanoStack: c }
  mkChainableComponents = root: namingScheme: let
    components = applyNamingSchemeToComponentTree namingScheme root.components;
  in {
    WithBase = dmerge.chainable root.base;
    WithRegion = dmerge.chainable components.Region;
    WithNamespace = dmerge.chainable components.Namespace;
    WithCardanoStack = dmerge.chainable components.CardanoStack;
  };
in
  # Loads a set of components using haumea library.
  #
  # Returns:
  #   - The loaded components.
  #
  # Type:
  #   { src: Path, transformer: a, loader: [b] } -> c
  haumea.lib.load {
    src = ./k8s;
    transformer = haumea.lib.transformers.liftDefault;
    loader = let
      # Loads an environment Nix configuration based on file name matches and arguments.
      #
      # Arguments:
      #   - matches: List of matches extracted from the file name.
      #   - args: Standard haumea arguments for loading.
      #   - path: Path to the environment file.
      #
      # Returns:
      #   - The loaded environment.
      #
      # Type:
      #   [String] -> { root: a, ... } -> Path -> b
      #
      # Note:
      #   This function implements the haumea loader signature.
      loadEnvironmentNix = matches: {root, ...}: let
        namingScheme = mkNamingScheme matches;
        Components = mkChainableComponents root namingScheme;
      in
        haumea.lib.loaders.default {
          inherit domain lib root;
          inherit (dmerge) update append updateOn chainMerge;
          inherit Components;
        };

      # Loads a YAML file.
      #
      # Arguments:
      #   - _: Unused argument.
      #   - _: Unused argument.
      #   - path: Path to the yaml file.
      #
      # Returns:
      #   - The loaded YAML data.
      #
      # Type:
      #   a -> b -> Path -> c
      #
      # Note:
      #   This function implements the haumea loader signature.
      loadYaml = _: _: readYAML;

      # Loads a component if it exists.
      #
      # Arguments:
      #   - _: Unused argument.
      #   - args: Standard haumea arguments for loading.
      #   - path: Path to the component.
      #
      # Returns:
      #   - The loaded component.
      #
      # Type:
      #   a -> { root: b, ... } -> Path -> c
      #
      # Note:
      #   This function implements the haumea loader signature.
      loadMaybeComponent = _: {root, ...}: path: let
        f =
          haumea.lib.loaders.default {
            inherit domain root;
            inherit (dmerge) update append updateOn;
          }
          path;
      in
        convertToComponent f;
    in [
      (haumea.matchers.regex ''^.+\.(yaml|yml)'' loadYaml)
      (haumea.matchers.regex ''^(.+)-(.+)@(.+)\.nix$'' loadEnvironmentNix)
      (haumea.matchers.always loadMaybeComponent)
    ];
  }
