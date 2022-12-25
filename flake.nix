{
  description = "Flake for managing Nix[OS] configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-22.11";
  };
  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    lib = nixpkgs.lib;
  in {
    nixosConfigurations = {
      testbox = lib.nixosSystem {
        inherit system;
        modules = [
          ./platforms/testbox/configuration.nix
        ];
      };

      kusanagi = lib.nixosSystem {
        inherit system;
        modules = [
          ./platforms/testbox/configuration.nix
        ];
      };
    };
  };
}
