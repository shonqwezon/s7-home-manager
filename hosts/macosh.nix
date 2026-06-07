{ ... }:
let
  username = "shon2";
in
{
  home = {
    inherit username;
    homeDirectory = "/Users/${username}";
  };

  imports = [
    ../modules/core
    ../modules/shell
  ];
}
