{ pkgs, ... }:
{
  imports = [
    ./git.nix
    ./zsh.nix
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    # Formatters
    nixfmt
  ];
}
