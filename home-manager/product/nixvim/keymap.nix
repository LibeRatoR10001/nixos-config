{
    programs.nixvim = {
        globals = {
            mapleader = " ";
            maplocalleader = " ";
        };
        keymaps = [
            {
                mode = [ "n" ];
                key = "J";
                action = "'5j'";
                options = {
                    expr = true;
                    remap = true;
                };
            }
            {
                mode = [ "n" ];
                key = "K";
                action = "'5k'";
                options = {
                    expr = true;
                    remap = true;
                };
            }
            # Wrapped line movement.
            {
                mode = [ "n" "v" ];
                key = "j";
                action = "v:count == 0 ? 'gj' : 'j'";
                options = {
                 expr = true;
                 remap = true;
               };
            }
            {
                mode = [ "n" "v" ];
                key = "k";
                action = "v:count == 0 ? 'gk' : 'k'";
                options = {
                    expr = true;
                    remap = true;
               };
            }
            # Window movement.
            {
                mode = [ "n" ];
              key = "<c-h>";
              action = "<c-w>h";
              options = {
                remap = true;
              };
            }
            {
              mode = [ "n" ];
              key = "<c-j>";
              action = "<c-w>j";
              options = {
                remap = true;
              };
            }
            {
              mode = [ "n" ];
              key = "<c-k>";
              action = "<c-w>k";
              options = {
                remap = true;
              };
            }
            {
              mode = [ "n" ];
              key = "<c-l>";
              action = "<c-w>l";
              options = {
                remap = true;
              };
            }
            # Window resize
            {
              mode = [ "n" ];
              key = "<c-up>";
              action = "<cmd>resize +2<cr>";
            }
            {
              mode = [ "n" ];
              key = "<c-down>";
              action = "<cmd>resize +2<cr>";
            }
            {
              mode = [ "n" ];
              key = "<c-left>";
              action = "<cmd>vertical resize -2<cr>";
            }
            {
              mode = [ "n" ];
              key = "<c-right>";
              action = "<cmd>vertical resize +2<cr>";
            }
            # Window split
            {
              mode = [ "n" ];
              key = "<leader>-";
              action = "<C-W>s";
              options = {
                desc = "Split Window Horizontally";
                remap = true;
              };
            }
            {
              mode = [ "n" ];
              key = "<leader>|";
              action = "<C-W>v";
              options = {
                desc = "Split Window Vertically";
                remap = true;
              };
            }
            {
                mode = [ "n" ];
                key = "<leader>qq";
                action = "<cmd>qa<cr>";
                options = {
                desc = "Quit All";
                };
            }
            # Alt上下>移动代码块
            {
                mode = [ "n" ];
                key = "<A-j>";
                action = "<cmd>m .+1<cr>==";
            }
            {
                mode = [ "n" ];
                key = "<A-k>";
                action = "<cmd>m .-2<cr>==";
            }
            {
                mode = [ "i" ];
                key = "<A-j>";
                action = "<esc><cmd>m .+1<cr>==gi";
            }
            {
                mode = [ "i" ];
                key = "<A-k>";
                action = "<esc><cmd>m .-2<cr>==gi";
            }
            {
                mode = [ "v" ];
                key = "<A-j>";
                action = ":m '>+1<cr>gv=gv";
            }
            {
                mode = [ "v" ];
                key = "<A-k>";
                action = ":m '<-2<cr>gv=gv";
            }
        ];
    };
}