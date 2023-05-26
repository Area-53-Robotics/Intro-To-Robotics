{
  description = "Basic flake template";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }:
    utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {


        devShell = with pkgs; mkShell {
          shellHook = ''

          '';
          buildInputs = with pkgs; [
            mkdocs
            python310Packages.mkdocs-material
            python310Packages.mkdocs-minify

            nodePackages.markdownlint-cli
            nodePackages.prettier
          ];
        };
      });
}
