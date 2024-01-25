return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local tel_builtin = require("telescope.builtin")
      local tel_themes = require("telescope.themes")
      local tel_find_files = function()
        tel_builtin.find_files(tel_themes.get_dropdown({ previewer = false }))
      end
      local tel_live_grep = function()
        tel_builtin.live_grep(tel_themes.get_dropdown())
      end
      local tel_buffers = function()
        tel_builtin.buffers(tel_themes.get_dropdown())
      end
      local tel_lsp_references = function()
        tel_builtin.lsp_references(tel_themes.get_dropdown())
      end
      local tel_grep_string = function()
        tel_builtin.grep_string(tel_themes.get_dropdown())
      end

      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "<leader>ff", tel_find_files, opts)
      vim.keymap.set("n", "<leader>fg", tel_live_grep, opts)
      vim.keymap.set("n", "<leader>fb", tel_buffers, opts)
      vim.keymap.set("n", "<leader>fr", tel_lsp_references, opts)
      vim.keymap.set("n", "<leader>fs", tel_grep_string, opts)
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}
