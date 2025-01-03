{ system, config, pkgs, inputs, ...}:
{
  imports = [
    ./core.nix
    ./keymap.nix
    ./coding
    ./editor
    ./infrastructure
    #./misc
    ./optimise
    ./visuals
  ];
  programs.nixvim.enable = true;
}
