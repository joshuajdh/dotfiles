return {
  {
    "<leader>a",
    function()
      require("simple-zoom").toggle_zoom()
      -- Refresh bufferline
      vim.schedule(function()
        vim.opt.showtabline = 2
      end)
    end,
    desc = "Toggle Zoom + Refresh Tabufline",
  },
}


