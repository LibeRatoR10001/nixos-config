{ config, ... }:
let 
    helpers = config.lib.nixvim;
in 
{
    programs.nixvim = {
        plugins.telescope = {
            enable = true;
            extensions = {
                fzf-native.enable = true;
            };
        };
        keymaps = [
            {
                mode = [ "n" ];
                key = "<leader><space>";
                action = helpers.mkRaw ''
                    function()
                        require("telescope.builtin").find_files()
                    end
                '';
                options = {
                    desc = "Find Files";
                };
            }
            {
                mode = [ "n" ];
                key = "<leader>f";
                action = helpers.mkRaw ''
                    function()
                        require("telescope.builtin").find_files()
                    end
                '';
                options = {
                    desc = "Find Files";
                };
            }
        ];
    };
}