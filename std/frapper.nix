{inputs}:
/*
Use the Frapper Blocktype for targets that you want to
make accessible with a 'run' action on the TUI.
*/
let
  inherit (inputs.std) actions;
in
  name: {
    __functor = _: self: selectors: self // selectors;
    inherit name;
    type = "frapper";
    actions = {
      currentSystem,
      fragment,
      fragmentRelPath,
      target,
      inputs,
    }: [(actions.run currentSystem target)];
  }
