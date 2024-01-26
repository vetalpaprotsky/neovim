return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- I'm using solargraph for Ruby, but I'm not installing it via Mason.
        -- Why? Cause in my projects it requires a bunch of dependensies that
        -- Mason doesn't support (or I don't know how to make Mason install
        -- them). I usually install these 4 gems when I work on a Rails
        -- project: solargraph, rubocop, rubocop-rails, rubocop-rspec.
        -- After that I have a great LSP and Linter support.
        ensure_installed = { "lua_ls", "html", "tsserver" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local on_attach = function(client, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, bufopts)
        vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, bufopts)
        vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, bufopts)
        vim.keymap.set("n", "<leader>li", vim.lsp.buf.implementation, bufopts)
        vim.keymap.set("n", "<leader>lr", vim.lsp.buf.references, bufopts)
        vim.keymap.set("n", "<leader>lt", vim.lsp.buf.type_definition, bufopts)
        vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help, bufopts)
        vim.keymap.set("n", "<leader>lR", vim.lsp.buf.rename, bufopts)
        vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, bufopts)
        vim.keymap.set("n", "<leader>lf", function()
          vim.lsp.buf.format({ async = true })
        end, bufopts)
      end

      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local servers = { "lua_ls", "html", "tsserver", "solargraph" }

      -- Configures language servers.
      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end
    end,
  },
}
