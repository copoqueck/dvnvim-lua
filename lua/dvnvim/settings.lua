local augroup = vim.api.nvim_create_augroup
local DvNvimGroup = augroup('DvNvim', {})

local autocmd = vim.api.nvim_create_autocmd


-- Disable mouse.
autocmd({"BufEnter"}, {
    group = DvNvimGroup,
    pattern = "*",
    command = [[:set mouse=]],
})

-- Trim spaces at end of line.
autocmd({"BufWritePre"}, {
    group = DvNvimGroup,
    pattern = "*.*",
    command = [[:%s/\s\+$//e]],
})

-- Tabs per extension TODO: Not working!
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = typescript, command = [[:setlocal sw=2 ts=2 sts=2]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = typescriptreact, command = [[:setlocal sw=2 ts=2 sts=2]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = html, command = [[:setlocal sw=2 ts=2 sts=2]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = javascript, command = [[:setlocal sw=2 ts=2 sts=2]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = javascriptreact, command = [[:setlocal sw=2 ts=2 sts=2]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = vue, command = [[:setlocal sw=4 ts=4 sts=4]] })
autocmd({ "FileType" }, { group = DvNvimGroup, pattern = json, command = [[:setlocal sw=2 ts=2 sts=2]] })


-- Enable relative line numbers.
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.encoding = "utf-8" -- Encoding
vim.opt.ruler = true -- File stats
vim.opt.guicursor = "" -- Simple block cursor.
vim.opt.cc = "80,120" -- Vertical lines.

-- Indent settings.
-- vim.opt.wrap = false
-- vim.opt.textwidth = 79
-- vim.opt.formatoptions = "tcqrn1"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- vim.opt.noshiftround = true
vim.opt.smartindent = true

-- Visualize hidden chars like: tabs, newlines, trims.
--   Use "list=true" to enable by default.
--   Or use map a key to toggle it like: `map <leader>l :set list!<CR>`
vim.opt.listchars = "tab:▸ ,trail:·" -- eol:¶
vim.opt.list = true  -- Enable it by default

-- Last line.
vim.opt.showmode = true
vim.opt.showcmd = true

-- Searching TODO: Not working!
-- vim.keymap.set("n", "/", "/\v") -- nnoremap / /\v
-- vim.keymap.set("v", "/", "/\v") -- vnoremap / /\v
-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- vim.opt.showmatch = true
-- map <leader><space> :let @/=''<cr> " clear search

-- TODO: Split line downwards.
-- nnoremap <S-H> hylpr<CR>

-- TODO: Quick formatter commands.
-- map <leader>q gqip
-- com! JsonFormat %!python -m json.tool

-- Always display tab bar.
vim.opt.showtabline = 2
vim.opt.tabpagemax = 100

-- Folding behaviour
vim.opt.foldmethod = "indent"

-- Temp file settings.
vim.opt.backup = true
vim.opt.backupdir = "backupfiles/"
vim.opt.dir = "swapfiles/"

-- TODO: Might not be necessary in nvim.
--  Reset Syntax Highlighting re-syncing entire file
-- command SyntaxReload syn sync fromstart

-- TODO: Inserts IPDB above the current line.
-- let @d='Oimport ipdb; ipdb.set_trace(context=30)'
