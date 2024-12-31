{ lib, pkgs, ... }:

{
  # 保持版本个数
  boot.loader.systemd-boot.configurationLimit = 3;

  # 每周垃圾清理
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 1w";
  };

  # 优化存储
  # you can also optimise the store manually via:
  #    nix-store --optimise
  # https://nixos.org/manual/nix/stable/command-ref/conf-file.html#conf-auto-optimise-store
  nix.settings.auto-optimise-store = true;
}