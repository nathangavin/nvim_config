vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--vim.keymap.set('n', '<space>d', '<cmd>Telescope diagnostics<CR>', { noremap=true, silent=true })
vim.keymap.set("n", "<leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
