{ pkgs, pkgs-unstable, ... }:
{
  imports = [
    ./git.nix
    ./k8s.nix
    ./lazygit.nix
    ./zoxide.nix
    ./zsh.nix
  ];

  home.packages = [
    # Formatters
    pkgs.nixfmt
  ];
}
