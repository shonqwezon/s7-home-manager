{ ... }:
{
  programs.vscode.profiles.default = {
    keybindings = import ./keybindings.nix;
    userSettings = import ./settings.nix;
  };
}
