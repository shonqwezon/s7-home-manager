{ config, pkgs, lib, ... }:
let
  cfg = config.s7.shell.k8s;
in
{
  options.s7.shell.k8s = { enable = lib.mkEnableOption "Enable k8s tools"; };
  config = lib.mkIf cfg.enable {
    home.packages = [
      pkgs.helmfile
      pkgs.kubectl
      pkgs.kubernetes-helm
      pkgs.k3d
    ];
  };
}
