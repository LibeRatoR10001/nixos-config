{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # product
    alacritty

    # utils
    fastfetch
    yazi
    btop
    fd
    ripgrep
    fzf
    which
    tree

    # archives
    gnutar
    zip
    unzip
    p7zip
    xz
    zstd

    # network
    aria2

    # nix
  ];
}
