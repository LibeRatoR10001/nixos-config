{ pkgs, ... }:
{
    programs.nixvim.extraPlugins = [
        pkgs.vimPlugins.lazydev-nvim
    ];
}