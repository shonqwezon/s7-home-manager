{ pkgs, ... }:
{
  programs.zsh = {
    enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "sonicradish";
    };

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
}
