{ pkgs, pkgs-unstable, ... }:
{
  imports = [
    ./docker.nix
    ./git.nix
    ./go.nix
    ./k8s.nix
    ./python.nix
    ./zsh.nix
  ];

  home.packages = [
    pkgs.nixfmt
    pkgs.jq
    pkgs.yq
  ];
}
