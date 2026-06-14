{ pkgs, ... }:
{
  programs = {
    zsh = {
      enable = true;

      oh-my-zsh = {
        enable = true;
        theme = "sonicradish";
      };

      autosuggestion.enable = true;    
      plugins = [
        {
          name = "fast-syntax-highlighting";
          src = pkgs.fetchFromGitHub {
            owner = "zdharma-continuum";
            repo = "fast-syntax-highlighting";
            rev = "v1.56";
            sha256 = "sha256-ZihUL4JAVk9V+IELSakytlb24BvEEJ161CQEHZYYoSA=";
          };
        }
      ];
    };

    zoxide = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}