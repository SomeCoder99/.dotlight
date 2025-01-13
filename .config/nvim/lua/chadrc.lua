-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
    ["@punctuation"] = { fg = "white" },
    ["@punctuation.delimiter"] = { fg = "white" },
  },
}

M.lsp = {
  signature = true,
}

M.colorify = {
  mode = "bg",
  enabled = true,
  highlight = {
    hex = true,
    lspvars = true,
  },
}

M.ui = {
  cmp = {
    icons = true,
    style = "atom_colored",
    icons_left = true,
    format_colors = {
      tailwind = true,
    }
  },
  statusline = {
    theme = "default",
  }
}

return M
