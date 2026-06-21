{ config, lib, ... }:
let
  cfg = config.s7.vscode;
  profiles = {
    default = { };
    yadro = import ./settings/yadro.nix;
  };
in
{
  options.s7.vscode = {
    profile = lib.mkOption {
      type = lib.types.enum [
        "default"
        "yadro"
      ];
      default = "default";
      description = "VSCode profile name (e.g. default, yadro)";
    };
  };

  config = {
    programs.vscode = {
      enable = true;
      package = null;
      mutableExtensionsDir = true;

      profiles.default = {
        keybindings = import ./keybindings.nix;
        userSettings = lib.recursiveUpdate (import ./settings/default.nix) profiles.${cfg.profile};
      };
    };
  };
}
