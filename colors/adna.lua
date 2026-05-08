-- Entry point for `:colorscheme adna`
-- Clear existing highlight groups to avoid conflicts
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
end

-- Register the colorscheme name with Neovim
vim.g.colors_name = "adna"

-- Adna is a dark theme, set background accordingly
vim.o.background = "dark"

-- Load and apply all Adna highlight groups
require("adna").setup()
