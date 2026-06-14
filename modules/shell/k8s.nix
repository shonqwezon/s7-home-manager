{ config, pkgs, lib, ... }:
let
  cfg = config.s7.shell.k8s;
in
{
  options.s7.shell.k8s = { enable = lib.mkEnableOption "Whether to enable k8s tools."; };
  config = lib.mkIf cfg.enable {
    home.packages = [
      pkgs.helmfile
      pkgs.kubectl
      pkgs.kubernetes-helm
      pkgs.k3d
    ];
    
    programs.k9s = {
      enable = true;
      settings = {
        readOnly = true;
      };
    };

    home.file.".kube/clusters/.keep".text = "";
    programs.zsh.initContent = ''
      export KUBECONFIG=$(find ~/.kube/clusters -type f -name "*.yaml" | sort | tr '\n' ':')
    '';
  };
}
