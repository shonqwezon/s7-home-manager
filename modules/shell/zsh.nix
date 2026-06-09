{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    ohMyZsh = {
      enable = true;
      theme = "sonicradish"
    };
  };

  users.defaultUserShell = pkgs.zsh
}
