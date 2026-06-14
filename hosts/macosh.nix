{ ... }:
{
  s7 = {
    core = {
      username = "shon2";
    };
    shell = {
      git.enable = true;
      k8s.enable = false;
    };
  };

  imports = [
    ../modules/core
    ../modules/shell
  ];
}
