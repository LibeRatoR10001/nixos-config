{
    programs.nixvim.plugins.alpha = {
        enable = true;
        #theme = "dashboard";
        layout = [
            {
              type = "padding";
              val = 2;
            }
            {
                opts = {
                    h1 = "Label";
                    position = "center";

                };
                type = "text";
                val = [
                    "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
                    "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
                    "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
                    "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
                    "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
                    "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
                ];
            }
            {
                type = "padding";
                val = 2;
            }
            {
                opts = {
                  h1_shotcut = "Include";
                  spacing = 1;
                };
                type = "group";
                val = [
                  {
                    on_press = {
                      __raw = "function() vim.cmd[[Telescope find_file]] end";
                    };
                    type = "button";
                    val = "  Find file";
                    opts = {
                      shortcut = "f";
                    };
                  }
                  {
                    on_press = {
                      __raw = "function() vim.cmd[[ene]] end";
                    };
                    opts = {
                      shortcut = "n";
                    };
                    type = "button";
                    val = "  New File";
                  }
                  {
                    on_press = {
                      __raw = "function() vim.cmd[[Telescope live_grep]] end";
                    };
                    opts = {
                      shortcut = "t";
                    };
                    type = "button";
                    val = "󰊄  Find Text";
                  }
                  {
                    on_press = {
                      __raw = "function() vim.cmd[[qa]] end";
                    };
                    opts = {
                      shortcut = "q";
                    };
                    type = "button";
                    val = "  quit";
                  }
                ];
            }
            {
              type = "padding";
              val = 2;
            }
        ];
        
    };
}