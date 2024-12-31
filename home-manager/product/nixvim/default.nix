{ system, config, pkgs, inputs, ...}:
{
  imports = [
    ./core.nix
    ./keymap.nix
    ./plugins
  ];
  programs.nixvim.enable = true;
}
