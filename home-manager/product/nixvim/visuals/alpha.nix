{ config, ... }:
let 
    helpers = config.lib.nixvim;
in 
{
    programs.nixvim = {
      plugins.alpha = {
        enable = true;
        layout = [
          {
            type = "padding";
            val = 2;
          }
          {
            opts = {
              hl = helpers.mkRaw ''
              {
                {
                  { "Function", 1, 25 },
                  { "String", 26, -1 }
                },
                {
                  { "Function", 1, 25 },
                  { "String", 26, -1 }
                },
                {
                  { "Function", 1, 25 },
                  { "String", 26, -1 }
                },
                {
                  { "Function", 1, 25 },
                  { "String", 26, -1 }
                },
                {
                  { "Function", 1, 60 },
                  { "String", 61, 80 },
                  { "Function", 81, -1 }
                },
                {
                  { "Function", 1, 66 },
                  { "String", 67, 86 },
                  { "Function", 87, -1 }
                },
                {
                  { "String", 1, 50 },
                  { "Function", 51, -1 }
                },
                {
                  { "String", 1, 49 },
                  { "Function", 50, -1 }
                },
                {
                  { "String", 1, 45 },
                  { "Function", 46, -1 }
                },
                {
                  { "String", 0, 38 },
                  { "Function", 39, -1 }
                },
                {
                  { "String", 0, 36 },
                  { "Function", 37, -1 }
                },
                {
                  { "String", 0, 21 },
                  { "Function", 22, -1 },
                },
                {
                  { "String", 0, 19 },
                  { "Function", 20, -1 },
                },
                {
                  { "String", 0, 17 },
                  { "Function", 18, -1 },
                },
                {
                  { "String", 0, 15 },
                  { "Function", 16, 33 },
                  { "String", 34, -1 }
                },
                {
                  { "String", 0, 10 },
                  { "Function", 11, 34 },
                  { "String", 35, -1 }
                },
                {
                  { "Function", 0, 40 },
                  { "String", 41, -1 }
                },
                {
                  { "Function", 0, 40 },
                  { "String", 41, -1 }
                },
                {
                  { "Function", 0, 40 },
                  { "String", 41, -1 }
                },
                {
                  { "Function", 0, 40 },
                  { "String", 41, -1 }
                }
              }
              '';
              position = "center";
            };
            type = "text";
            val = [
              "          ▗▄▄▄       ▗▄▄▄▄    ▄▄▄▖          "
              "          ▜███▙       ▜███▙  ▟███▛          "
              "           ▜███▙       ▜███▙▟███▛           "
              "            ▜███▙       ▜██████▛            "   
              "     ▟█████████████████▙ ▜████▛     ▟▙      "
              "    ▟███████████████████▙ ▜███▙    ▟██▙     " 
              "           ▄▄▄▄▖           ▜███▙  ▟███▛     "
              "          ▟███▛             ▜██▛ ▟███▛      " 
              "         ▟███▛               ▜▛ ▟███▛       "   
              "▟███████████▛                  ▟██████████▙ "  
              "▜██████████▛                  ▟███████████▛ "   
              "      ▟███▛ ▟▙               ▟███▛          " 
              "     ▟███▛ ▟██▙             ▟███▛           "
              "    ▟███▛  ▜███▙           ▝▀▀▀▀            "
              "    ▜██▛    ▜███▙ ▜██████████████████▛      "
              "     ▜▛     ▟████▙ ▜████████████████▛       "
              "           ▟██████▙       ▜███▙             "   
              "          ▟███▛▜███▙       ▜███▙            "
              "         ▟███▛  ▜███▙       ▜███▙           "
              "         ▝▀▀▀    ▀▀▀▀▘       ▀▀▀▘           "
            ];
          }
          {
            type = "padding";
            val = 4;
          }
          {
            opts = {
              hl = "Keyword";
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
        ];
      };
    };
}