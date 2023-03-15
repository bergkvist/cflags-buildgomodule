{ pkgs ? import (builtins.fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/a7cc81913bb3cd1ef05ed0ece048b773e1839e51.tar.gz";
    sha256 = "0mzqw20rj0i0wi8zbdszcm81zadmyk1mspi70bf7qkfdv201fl28";
  }) {}
}:
pkgs.buildGoModule {
  name = "cflags-buildgomodule";
  buildInputs = [ pkgs.go_1_20 ];
  src = builtins.path {
    name = "main";
    path = ./.;
    filter = path: type: builtins.elem (baseNameOf path) [
      "main.go"
      "go.mod"
      "go.sum"
    ];
  };
  vendorSha256 = "sha256-VJj1itAxFDBzGBWVW69FKWireAiR2G1kvdEpfHqBRiQ=";
}
