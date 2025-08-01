require "nvchad.autocmds"

-- Fix path for tmux
-- vim.env.PATH = "/home/burnsoft/bin:" .. vim.env.PATH
-- vim.cmd([[cnoreabbrev tmux !/home/burnsoft/bin/tmux]])
-- vim.cmd([[cnoreabbrev node !~/opt/bin/node]])
vim.env.PATH = "~/opt/bin:" .. vim.env.PATH

-- Open nvim tree without hidden files on launch   
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      require("nvim-tree.api").tree.toggle({ find_file = false, focus = true, })
      require("nvim-tree.api").tree.reload()
      require("nvim-tree.api").tree.toggle_hidden_filter()
    end
  end,
})

-- Set filetype for custom filetypes
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.cob", "*.apg" },
  command = "set filetype=c",
})
