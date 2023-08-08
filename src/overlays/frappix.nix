# SPDX-FileCopyrightText: 2022 The Standard Authors
{
  lib,
  buildGoModule,
  installShellFiles,
  paisano-tui,
  description,
}: let
  version = "5"; # lib.fileContents (inputs.self + /VERSION);
in
  buildGoModule rec {
    inherit version;
    pname = "frp";
    meta = {
      inherit description;
      license = with lib.licenses; unlicense;
      homepage = "https://github.com/blaggacao/frappix";
    };

    src = paisano-tui + /src;

    vendorHash = "sha256-ja0nFWdWqieq8m6cSKAhE1ibeN0fODDCC837jw0eCnE=";

    nativeBuildInputs = [installShellFiles];

    postInstall = ''
      mv $out/bin/paisano $out/bin/${pname}

      installShellCompletion --cmd ${pname} \
        --bash <($out/bin/${pname} _carapace bash) \
        --fish <($out/bin/${pname} _carapace fish) \
        --zsh <($out/bin/${pname} _carapace zsh)
    '';

    ldflags = [
      "-s"
      "-w"
      "-X main.buildVersion=${version}"
      "-X main.argv0=${pname}"
      "-X main.project=Frappix"
      "-X flake.registry=__std"
      "-X env.dotdir=.std"
    ];
  }
