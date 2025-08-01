return {

  ---- NVCHAD PLUGIN EXTENSIONS -------------------------------------------------------------------


  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   opts = require "configs.conform",
  -- },
  --
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  
  --
  -- --  test new blink
  -- { import = "nvchad.blink.lazyspec" },
  --

  ---- CUSTOM PLUGINS -----------------------------------------------------------------------------

  -- Enables nice code folding like vscode
  {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    event = "BufReadPost",
    config = function()
      require("configs.nvim-ufo")
    end,
  },

  -- Simulates tmux panes in nvim
  {
    "fasterius/simple-zoom.nvim",
    config = true,
    keys = require("configs.simple-zoom"),
  },

  -- -- Lua Package Manager (remove?)
  -- {
  --   "vhyrro/luarocks.nvim",
  --   priority = 1000, -- must run early
  --   config = true,
  -- },


  ---- DISABLED PLUGINS ---------------------------------------------------------------------------

  -- Ammoying if you don't work with colors
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },

  -- Codeberg plugin blocked by micron firewall
  {
    "FelipeLema/cmp-async-path",
    enabled = false,
  },

}

