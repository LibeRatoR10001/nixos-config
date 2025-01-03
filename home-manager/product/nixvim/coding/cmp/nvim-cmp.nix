{ config, ... }:
let 
    helpers = config.lib.nixvim;
in
{
    programs.nixvim.plugins = {
        cmp = {
            enable = true;
            autoEnableSources = true;
            settings = {
                snippet.expand = ''
                    function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                '';
                sources = helpers.mkRaw ''
                    cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "path" },
                    { name = "buffer" },
                    { name = "latex_symbols", option = { strategy = 2 } },
                    { name = "dictionary" },
                    })
                '';
                mapping = {
                    "<c-space>" = "cmp.mapping.complete()";
                    "<c-b>" = "cmp.mapping.scroll_docs(-4)";
                    "<c-f>" = "cmp.mapping.scroll_docs(4)";
                    "<c-e>" = "cmp.mapping.close()";
                    "<cr>" = "cmp.mapping.confirm({ select = true })";
                    "<tab>" = ''
                      cmp.mapping(function(fallback)
                        if cmp.visible() then
                          cmp.select_next_item()
                        else
                          fallback()
                        end
                      end, {"i", "s"})
                    '';
                    "<s-tab>" = ''
                      cmp.mapping(function()
                        if cmp.visible() then
                          cmp.select_prev_item()
                        end
                      end, {"i", "s"})
                    '';
                    "<c-j>" = ''
                      cmp.mapping(function(fallback)
                        local luasnip = require("luasnip")
                        if luasnip.jumpable(1) then
                          luasnip.jump(1)
                        else
                          fallback()
                        end
                      end, {"i", "s"})
                    '';
                    "<c-k>" = ''
                      cmp.mapping(function()
                        local luasnip = require("luasnip")
                        if luasnip.jumpable(-1) then
                          luasnip.jump(-1)
                        end
                      end, {"i", "s"})
                    '';
                };
                cmdline = {
                  "/" = {
                    mapping = {
                      helpers.mkRaw = "cmp.mapping.preset.cmdline()";
                    };
                    sources = [
                      {
                        name = "buffer";
                      }
                    ];
                  };
                  ":" = {
                    mapping = {
                      helpers.mkRaw = "cmp.mapping.preset.cmdline()";
                    };
                    sources = [
                      {
                        name = "path";
                      }
                      {
                        name = "cmdline";
                        option = {
                          ignore_cmds = [
                            "Man"
                            "!"
                          ];
                        };
                      }
                    ];
                  };
                };
            };
        };
        cmp-nvim-lsp.enable = true;
        cmp_luasnip.enable = true;
        cmp-path.enable = true;
        cmp-buffer.enable = true;
        cmp-latex-symbols.enable = true;
        cmp-dictionary.enable = true;
    };
}