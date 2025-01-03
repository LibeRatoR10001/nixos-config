{ config, lib, pkgs, ... }:
with lib;
{
    options = {
        desktopEnv = {
            enable = mkOption {
                type = types.bool;
                default = false;
                description = "Whether to enable a desktop environment";
            };
            flavor = mkOption {
                type = types.enum [ "gnome" "kde" "hyprland" "cosmic" ];
                default = "kde";
                description = "The desktop environment flavor";
            };
        };
    };
    config = {
        environment = lib.mkIf config.desktopEnv.enable {
            variables.XDG_DATA_DIRS = [ pkgs.shared-mime-info ];
            systemPackages = with pkgs; [
                (lib.mkIf (config.desktopEnv.flavor == "kde") kde)
            ];
        };
    };
}