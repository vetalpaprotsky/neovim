local options = {
  backup = false,                    -- create a backup file
  clipboard = "unnamedplus",         -- allows neovim to access the system clipboard
  completeopt = {                    -- mostly just for cmp
    "menu", "menuone", "noselect"
  },
  fileencoding = "utf-8",            -- the encoding written to a file
  hlsearch = true,                   -- highlight all matches on previous search pattern
  ignorecase = true,                 -- ignore case in search patterns
  mouse = "a",                       -- allow the mouse to be used in neovim
  pumheight = 10,                    -- maximum number of items to show in the popup menu
  showmode = false,                  -- show things like -- INSERT --
  showtabline = 2,                   -- always show tabs
  smartcase = true,                  -- smart case
  smartindent = true,                -- make indenting smarter again
  splitbelow = true,                 -- force all horizontal splits to go below current window
  splitright = true,                 -- force all vertical splits to go to the right of current window
  swapfile = false,                  -- create a swapfile
  termguicolors = true,              -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                 -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile = true,                   -- enable persistent undo
  updatetime = 300,                  -- faster completion (4000ms default)
  writebackup = false,               -- if a file is being edited by another program
                                     --   or was written to file while editing with another program,
                                     --   it is not allowed to be edited
  expandtab = true,                  -- convert tabs to spaces
  shiftwidth = 2,                    -- the number of spaces inserted for each indentation
  tabstop = 2,                       -- insert 2 spaces for a tab
  cursorline = true,                 -- highlight the current line
  number = true,                     -- set numbered lines
  relativenumber = true,             -- set relative numbered lines
  numberwidth = 1,                   -- set number column width
  signcolumn = "yes",                -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                      -- display lines as one long line
  scrolloff = 8,                     -- better scrolling experience
  sidescrolloff = 8,                 -- better scrolling experience
  hidden = true,                     -- navigate buffers without losing unsaved work
  colorcolumn = "81",                -- line length marker
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- By default, when pressing left/right cursor keys, Nvim will not move
-- to the previous/next line after reaching first/last character in the line.
-- Fortunately this behaviour can be easily changed.
vim.cmd "set whichwrap+=<,>,[,],h,l"
