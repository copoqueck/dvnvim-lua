
vim.g.mapleader = " "

-- Ctrl-C instead of ESC, I though it was horrible at first, but I actually move my hands less.
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Open editor on new tab.
vim.keymap.set("n", "<leader>e", [[:tabedit .<CR>]])

-- Split line downwards.
vim.keymap.set("n", "<S-H>", [[hylpr<CR>]])

-- Format JSON.
vim.keymap.set({"n", "v"}, "<leader>json", [[%!python -m json.tool<CR>]])

-- Git Status display (already using fugitive).
-- vim.keymap.set("n", "<leader>gatus", "<cmd>!git status<CR>")

-- Tree display.
vim.keymap.set("n", "<leader>tree", "<cmd>!tree<CR>")

-- IPDB above current line.
vim.keymap.set("n", "@d", [[Oimport ipdb; ipdb.set_trace(context=30)<Esc>]])

-- Reset syntax highlighting.
vim.api.nvim_create_user_command("SyntaxReload", "syn sync fromstart", {})
