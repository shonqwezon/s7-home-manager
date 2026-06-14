{ pkgs, ... }:
{
  home.packages = [
    pkgs.python314
  ];

  programs = {
    poetry.enable = true;
    uv.enable = true;
  };
}
