
-- Enable relative line numbers.
vim.opt.nu = false
vim.opt.relativenumber = false

vim.opt.encoding = "utf-8" -- Encoding
vim.opt.ruler = true -- File stats
vim.opt.guicursor = "" -- Simple block cursor.
vim.opt.cc = "80,120" -- Vertical lines.

-- Indent settings.
-- vim.opt.wrap = false
-- vim.opt.textwidth = 79
vim.opt.formatoptions = "tcqrn1"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Visualize hidden chars like: tabs, newlines, trims.
--   Use "list=true" to enable by default.
--   Or use map a key to toggle it like: `map <leader>l :set list!<CR>`
vim.opt.listchars = "tab:▸ ,trail:·" -- eol:¶
vim.opt.list = true  -- Enable it by default

-- Searching.
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true

-- Always display tab bar.
vim.opt.showtabline = 2
vim.opt.tabpagemax = 100

-- Temp file settings.
vim.opt.backup = true
vim.opt.backupdir = "/home/oqueck/.config/nvim/backupfiles/"
vim.opt.dir = "/home/oqueck/.config/nvim/swapfiles/"

-- Folding behaviour (treesitter)
vim.opt.foldmethod = "indent"
-- vim.opt.foldmethod = expr -- For native use "indent"
-- vim.opt.foldexpr = nvim_treesitter#foldexpr()
-- vim.opt.nofoldenable = true -- Disable folding at startup.
