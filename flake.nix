{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = {flake-parts, ...} @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux" "x86_64-darwin"];

      perSystem = {pkgs, ...}: {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            typst
            typst-lsp
            typst-fmt
          ];
        };
      };
    };
}
