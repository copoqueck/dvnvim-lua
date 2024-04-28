require("dvnvim.settings")
require("dvnvim.remaps")
require("dvnvim.lazy_init")

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

-- Tabs per extension. Does LSP do this?
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = typescript, command = [[:setlocal sw=2 ts=2 sts=2]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = typescriptreact, command = [[:setlocal sw=2 ts=2 sts=2]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = html, command = [[:setlocal sw=2 ts=2 sts=2]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = javascript, command = [[:setlocal sw=2 ts=2 sts=2]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = javascriptreact, command = [[:setlocal sw=2 ts=2 sts=2]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = vue, command = [[:setlocal sw=4 ts=4 sts=4]] })
-- autocmd({ "FileType" }, { group = DvNvimGroup, pattern = json, command = [[:setlocal sw=2 ts=2 sts=2]] })
