return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gatus", vim.cmd.Git)

        local Dvnvim_Fugitive = vim.api.nvim_create_augroup("Dvnvim_Fugitive", {})
        local autocmd = vim.api.nvim_create_autocmd

        autocmd("BufWinEnter", {
            group = Dvnvim_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end
            end,
        })
    end
}
