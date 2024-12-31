{
    programs.nixvim = {
        plugins.nvim-tree = {
            enable = true;
        };
        keymaps = [
            {
                mode = [ "n" "i" "v" ];
                key = "<leader>e";
                action = ":NvimTreeToggle<CR>";
                options = {
                    desc = "Toggle tree folder";
                };
            }
        ];
    };
}