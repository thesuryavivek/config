return {
  "nvimtools/none-ls.nvim",

  config = function()
    -- code
    local null_ls = require("null-ls")

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    -- to setup format on save
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      sources = {
        --  to disable file types use
        --  "formatting.prettier.with({disabled_filetypes = {}})" (see null-ls docs)
        formatting.prettierd.with({
          extra_filetypes = { "astro", "prisma" },
        }),                     -- js/ts formatter
        formatting.stylua,      -- lua formatter
        diagnostics.eslint_d.with({ -- js/ts linter
          -- only enable eslint if root has .eslintrc.json
          condition = function(utils)
            return utils.root_has_file(".eslintrc.json")
          end,
        }),
      },

      -- configure format on save
      on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                async = false,
              })
            end,
          })
        end
      end,
    })
  end,
}
