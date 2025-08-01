require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save file 
map({ "n", "i", "v" }, "<C-s>", "<Esc><cmd> w <cr>", { desc = "Save file and return" })

-- Quit all 
map("n", "<leader>qa", ":qa!<CR>", { desc = "Quit all and exit Neovim" })

-- Code Folding with nvim-ufo
map("n", "+", function() require("ufo").openAllFolds() end, { desc = "Open all folds" })
map("n", "-", function() require("ufo").closeAllFolds() end, { desc = "Close all folds" })
map("n", "=", "za", { desc = "Toggle fold under cursor" })
map("n", "\\", "zA", { desc = "Toggle all folds under cursor" })

-- Window navigation with Ctrl + Arrow keys
map("n", "<C-Left>",  "<C-w>h", { desc = "Move to left window" })
map("n", "<C-Down>",  "<C-w>j", { desc = "Move to bottom window" })
map("n", "<C-Up>",    "<C-w>k", { desc = "Move to top window" })
map("n", "<C-Right>", "<C-w>l", { desc = "Move to right window" })

map("n", "<C-w>_", "<C-w>s", { remap = true, desc = "Split window horizonally"})
map("n", "<C-w>|", "<C-w>v", { remap = true, desc = "Split window vertically"})

map("v", "<leader>fg", "<cmd>Telescope grep_string<CR>", { desc = "telescope grep string" })

-- LSP: Go to Definition with Ctrl + Enter
map("n", "<C-d>", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })

-- Use terminal configuration from chadrc
local opts = { pos = "float", id = "floatTerm", float_opts = require("nvconfig").ui.term.float }
map({ "n", "t" }, "<A-i>", function() require("nvchad.term").toggle(opts) end, { desc = "Float Term" })

