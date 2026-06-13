{ pkgs, pkgs-unstable, ... }:
{
  imports = [
    ./git.nix
    ./lazygit.nix
    ./zoxide.nix
    ./zsh.nix
  ];

  home.packages = [
    # Formatters
    pkgs.nixfmt

    # Dev tools
    pkgs.awscli
    pkgs.hadolint
    pkgs.helmfile
    pkgs.kubernetes-helm
    pkgs.k3d
    pkgs.kubectl
  ];
}
