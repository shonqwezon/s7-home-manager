{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    settings.user = {
      email = "shonzbso@gmail.com";
      name = "Shon Qwezon";
    };

    settings = {
      init.defaultBranch = "main";
      credential.helper = "manage";

      core = {
        editor = "vim";
        ignorecase = false;
      };

      push = {
        autoSetupRemote = true;
      };
    };
  };
}
