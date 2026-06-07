{ pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      init.defaultBranch = "main";

      user = {
        email = "shonzbso@gmail.com";
        name = "Shon Qwezon";
      };
    };
  };
}
