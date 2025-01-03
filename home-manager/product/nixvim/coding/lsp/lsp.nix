{
    programs.nixvim = {
        plugins.lsp = {
            enable = true;
            preConfig = ''
              require("neoconf").setup({})
              require("lazydev").setup({})
            '';
            capabilities = ''
              capabilities = require("cmp_nvim_lsp").default_capabilities()
            '';
            servers = {
              clangd.enable = true;
              cmake.enable = true;
              gopls.enable = true;
              ltex = {
                  enable = true;
                  settings = {
                    checkFrequency = "edit";
                    additionalRules.enablePickyRules = true;
                    languageToolHttpServerUri = "https://languagetool.puffedpescado.com/";
                  };
                  onAttach.function = ''
                    -- rest of your on_attach process.
                    require("ltex_extra").setup({
                      -- table <string> : languages for witch dictionaries will be loaded, e.g. { "es-AR", "en-US" }
                      -- https://valentjn.github.io/ltex/supported-languages.html#natural-languages
                      load_langs = { "en-US" }, -- en-US as default
                      -- boolean : whether to load dictionaries on startup
                      init_check = true,
                      -- string : relative or absolute path to store dictionaries
                      -- e.g. subfolder in the project root or the current working directory: ".ltex"
                      -- e.g. shared files for all projects:  vim.fn.expand("~") .. "/.local/share/ltex"
                      path = ".ltex", -- project root or current working directory
                      -- string : "none", "trace", "debug", "info", "warn", "error", "fatal"
                      log_level = "none",
                      -- table : configurations of the ltex language server.
                      -- Only if you are calling the server from ltex_extra
                      server_opts = nil,
                    })
                  '';
              };
              lua_ls.enable = true;
              nil_ls.enable = true;
              pyright.enable = true;
              ruff.enable = true;
              rust-analyzer.enable = true;
              ts_ls.enable = true;
              
            };
            keymaps.lspBuf = {
              gK = "hover";
              gD = "references";
              gd = "definition";
              gi = "implementation";
              gt = "type_definition";
            };
        };
    };
}