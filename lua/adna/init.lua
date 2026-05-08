local M = {}

M.setup = function()
    -- Clear existing highlights and reset syntax
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    -- Register colorscheme with Neovim
    vim.g.colors_name = "adna"
    -- Adna is a dark theme
    vim.o.background = "dark"

    -- Load and apply highlight groups
    local ok, groups = pcall(require, "adna.groups")
    if not ok then
        vim.notify("Adna: Failed to load highlight groups: " .. tostring(groups), vim.log.levels.ERROR)
        return
    end

    for group, settings in pairs(groups.setup()) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Set 16-color terminal palette from theme palette
    local palette_ok, palette = pcall(require, "adna.palette")
    if palette_ok then
        vim.g.terminal_color_0 = palette.black
        vim.g.terminal_color_1 = palette.red
        vim.g.terminal_color_2 = palette.green
        vim.g.terminal_color_3 = palette.yellow
        vim.g.terminal_color_4 = palette.blue
        vim.g.terminal_color_5 = palette.magenta
        vim.g.terminal_color_6 = palette.cyan
        vim.g.terminal_color_7 = palette.white
        vim.g.terminal_color_8 = palette.bright_black
        vim.g.terminal_color_9 = palette.bright_red
        vim.g.terminal_color_10 = palette.bright_green
        vim.g.terminal_color_11 = palette.bright_yellow
        vim.g.terminal_color_12 = palette.bright_blue
        vim.g.terminal_color_13 = palette.bright_magenta
        vim.g.terminal_color_14 = palette.bright_cyan
        vim.g.terminal_color_15 = palette.bright_white
    else
        vim.notify("Adna: Failed to load color palette: " .. tostring(palette), vim.log.levels.WARN)
    end
end

-- Explicit load function for :colorscheme command
M.load = function()
    M.setup()
end

return M
