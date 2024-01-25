return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      border = "single",
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
    })

    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "…", ":lua require('FTerm').toggle()<CR>", opts) -- ALT + ; on Mac.
    vim.api.nvim_set_keymap("t", "…", "<C-\\><C-n>:lua require('FTerm').toggle()<CR>", opts) -- ALT + ; on Mac.
  end,
}
