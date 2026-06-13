{ ... }:
{
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfree = true;

  xdg.configFile."nixpkgs/config.nix".text = ''
    { allowUnfree = true; }
  '';
}
