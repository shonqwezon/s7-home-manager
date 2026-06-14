{ ... }:
{
  s7 = {
    core = {
      username = "shon2";
    };
    shell = {
      k8s.enable = false;
    };
  };

  imports = [
    ../modules/core
    ../modules/shell
  ];
}
