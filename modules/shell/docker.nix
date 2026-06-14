{ config, pkgs, lib, ... }:
let
  cfg = config.s7.shell.docker;
in
{
  options.s7.shell.docker = { enable = lib.mkEnableOption "Whether to enable docker cli."; };
  config = lib.mkIf cfg.enable {
    home.packages = [
      pkgs.docker
      pkgs.hadolint
    ];
  };
}
