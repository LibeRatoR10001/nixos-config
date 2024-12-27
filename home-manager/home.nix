{ inputs, outputs, lib, config, pkgs, ...}:
{

  imports = [
    ./packages.nix
    ./product/nixvim.nix
  ];

  home = {
    username = "Atom";
    homeDirectory = "/home/Atom";
  };
  home.packages = (import ./packages.nix { pkgs = pkgs; }).home.packages;

  programs.kitty.enable = true;

  # environment
  home.sessionVariables.NIXOS_OZONE_WL = "1";
  home.sessionVariables.DISPLAY = "wayland-0";

  programs.home-manager.enable = true;
  programs.git.enable = true;
  home.stateVersion = "24.11";
}