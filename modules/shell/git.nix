{ config, lib, pkgs, ... }:
let
  cfg = config.s7.shell.git;
in
{
  options.s7.shell.git = { 
    enable = lib.mkEnableOption "Whether to enable git module.";
    userEmail = lib.mkOption {
      type = lib.types.str;
      default = "shonzbso@gmail.com";
    };
    userName = lib.mkOption {
      type = lib.types.str;
      default = "Shon Qwezon";
    };
  };
  config = lib.mkIf cfg.enable {
    programs = {
      git = {
        enable = true;

        settings.user = {
          email = cfg.userEmail;
          name = cfg.userName;
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

      lazygit = {
        enable = true;
      };
    };
  };
}
