{ ... }:
{
  programs.vscode = {
    enable = true;
    package = null;
    mutableExtensionsDir = true;

    profiles.default = {
      keybindings = import ./keybindings.nix;
      userSettings = import ./settings/default.nix;
    };
  };
}
