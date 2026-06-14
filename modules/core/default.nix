{ config, lib, pkgs, ... }:
let
  cfg = config.s7.core;

  homeDirectoryPrefix = 
    if pkgs.stdenv.hostPlatform.isDarwin
    then "/Users"
    else "/home";
in
{
  options.s7.core = {
    username = lib.mkOption { 
      type = lib.types.str;
      description = "OS username";
    };
  };

  config = {
    home = {
      username = cfg.username;
      homeDirectory = "/${homeDirectoryPrefix}/${cfg.username}";
      stateVersion = "26.05";
    };

    programs.home-manager.enable = true;
    nixpkgs.config.allowUnfree = true;

    xdg.configFile."nixpkgs/config.nix".text = ''
      { allowUnfree = true; }
    '';
  };
}
