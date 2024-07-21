{ pkgs ? import <nixpkgs> {
  config.allowUnfree = true;
} }:

  pkgs.mkShell {
    nativeBuildInputs = with pkgs.buildPackages; [
      google-cloud-sdk
      terraform
      vscode
    ];
}
