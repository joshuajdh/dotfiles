require "nvchad.options"

local o = vim.o

o.cursorlineopt ='both' -- to enable cursorline!

-- Disable text line wrapping  
o.wrap = false

-- Disable swap files
o.swapfile = false
o.backup = false

-- Always show buffers
o.showtabline = 2

o.autoindent = true
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4

