vim.g.mapleader = "\\"
vim.keymap.set("n","<leader>pv", ":Ex<cr>")
vim.keymap.set("i","jkl","<esc>",{ noremap = true })
vim.keymap.set("v","<leader>pc", ":w<home>silent <end> !pc<cr>")
vim.keymap.set("n","<leader>pp", ":r! pp<cr>")
vim.keymap.set("n","<leader>pc",":silent :w !pc<cr>")


