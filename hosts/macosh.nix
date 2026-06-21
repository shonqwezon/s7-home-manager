{ ... }:
{
  s7 = {
    core = {
      username = "shon2";
    };
    shell = {
      docker.enable = true;
      git.enable = true;
      k8s.enable = false;
    };
  };

  imports = [
    ../modules/core
    ../modules/shell
    ../modules/vscode
  ];

  home.stateVersion = "26.05";
}
