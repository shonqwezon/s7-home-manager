{ pkgs, pkgs-unstable, ... }:
{
  imports = [
    ./git.nix
    ./k8s.nix
    ./zsh.nix
  ];

  home.packages = [
    # Formatters
    pkgs.nixfmt
  ];
}
