{
    programs.nixvim.plugins.lualine = {
        enable = true;
        settings.options = {
            globalstatus = true;
            theme = "dracula";
            icons_enabled = true;
            component_separators = {
                left = "|";
                right = "|";
            };
            section_separators = {
                left = "";
                right = "";
            };
        };
    };
}