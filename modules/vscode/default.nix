{ ... }:
{
  imports = [
    ./default
  ];

  programs.vscode = {
    enable = true;
    package = null;
    mutableExtensionsDir = true;
  };
}
