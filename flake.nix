{
  description = "A Nix-flake-based development environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = inputs: let
    supportedSystems = ["x86_64-linux"]; # "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
    forEachSupportedSystem = f:
      inputs.nixpkgs.lib.genAttrs supportedSystems (
        system:
          f {
            pkgs = import inputs.nixpkgs {
              inherit system;
            };
          }
      );
  in {
    devShells = forEachSupportedSystem (
      {pkgs}: let
        environment-packages = with pkgs; [
          zola
          aspell
        ];
      in {
        default = pkgs.mkShell {
          packages = environment-packages;
        };
      }
    );
  };
}
