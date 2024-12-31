{
    programs.nixvim = {
        plugins.bufferline.enable = true;

        keymaps = [
            {
                mode = [ "n" ];
                key = "<A-h>";
                action = ":BufferLineCyclePrev<CR>";
            }
            {
                mode = [ "n" ];
                key = "<A-l>";
                action = ":BufferLineCycleNext<CR>";
            }
        ];
    };
}