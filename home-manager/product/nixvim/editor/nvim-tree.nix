{
    programs.nixvim = {
        plugins.nvim-tree = {
            enable = true;
        };
        keymaps = [
            {
                mode = [ "n" ];
                key = "<leader>e";
                action = ":NvimTreeToggle<CR>";
                options = {
                    desc = "Toggle tree folder";
                };
            }
        ];
    };
}