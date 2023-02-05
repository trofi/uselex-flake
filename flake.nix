{
  description = "uselex-flake overlay";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    trofi-overlay = {
      url = "github:trofi/nixpkgs-overlays";
      flake = false;
    };
    uselex = {
      url = "github:trofi/uselex";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, trofi-overlay, uselex }@inputs: let
    np = import nixpkgs { system = "x86_64-linux"; };
  in {
    packages."x86_64-linux" = rec {
      uselex = np.callPackage (trofi-overlay + "/uselex") {};
      uselex_live = uselex.overrideAttrs (oa: {
        version = inputs.uselex.shortRev;
        src = inputs.uselex;
      }); }; };
}
