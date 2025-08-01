-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = 'onenord',
  theme_toggle = { 'onenord', 'onenord_light'},
}

M.nvdash = { load_on_startup = false }

M.ui = {
    
    telescope = { style = "bordered"},

    -- Load bufferline after simple-zoom
    tabufline = { lazyload = false },

    -- Custom terminal configurations
    term = {
        winopts = { number = false, relativenumber = false },
        sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
        float = {
            relative = "editor",
            row = 0.1,
            col = 0.1,
            width = 0.8,
            height = 0.7,
            border = "rounded",
        },
    },
}

return M
