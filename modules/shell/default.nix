{ pkgs, pkgs-unstable, ... }:
{
  imports = [
    ./docker.nix
    ./git.nix
    ./k8s.nix
    ./python.nix
    ./zsh.nix
  ];

  home.packages = [
    # Formatters
    pkgs.nixfmt
  ];
}
