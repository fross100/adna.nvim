local M = {}

local colors = require("adna.palette")

M.setup = function()
    return {
        -- =============================================
        -- Base UI Highlight Groups
        -- =============================================
        Normal = { fg = colors.fg, bg = colors.bg },
        NormalNC = { fg = colors.fg, bg = colors.bg }, -- Non-current window
        Cursor = { fg = colors.bg, bg = colors.cursor },
        CursorLine = { bg = colors.selection_bg },
        CursorColumn = { bg = colors.selection_bg },
        Visual = { fg = colors.selection_fg, bg = colors.selection_bg },
        VisualNOS = { fg = colors.selection_fg, bg = colors.selection_bg },
        StatusLine = { fg = colors.fg, bg = colors.selection_bg },
        StatusLineNC = { fg = colors.black, bg = colors.bg },
        VertSplit = { fg = colors.black, bg = colors.bg },
        WildMenu = { fg = colors.bg, bg = colors.accent },

        -- =============================================
        -- Line Numbers & Gutter
        -- =============================================
        LineNr = { fg = colors.black, bg = colors.bg },
        LineNrAbove = { fg = colors.black },
        LineNrBelow = { fg = colors.black },
        FoldColumn = { fg = colors.black, bg = colors.bg },
        SignColumn = { bg = colors.bg },

        -- =============================================
        -- Search & Highlighting
        -- =============================================
        Search = { fg = colors.bg, bg = colors.accent },
        IncSearch = { fg = colors.bg, bg = colors.cursor },
        CurSearch = { fg = colors.bg, bg = colors.cursor },
        Substitute = { fg = colors.bg, bg = colors.red },

        -- =============================================
        -- Folding
        -- =============================================
        Folded = { fg = colors.fg, bg = colors.selection_bg, italic = true },

        -- =============================================
        -- Popup Menu (Pmenu)
        -- =============================================
        Pmenu = { fg = colors.fg, bg = colors.selection_bg },
        PmenuSel = { fg = colors.bg, bg = colors.accent },
        PmenuSbar = { bg = colors.black },
        PmenuThumb = { bg = colors.accent },

        -- =============================================
        -- Tab Line
        -- =============================================
        TabLine = { fg = colors.fg, bg = colors.selection_bg },
        TabLineSel = { fg = colors.bg, bg = colors.accent },
        TabLineFill = { bg = colors.bg },

        -- =============================================
        -- Standard Vim Syntax Groups
        -- =============================================
        Comment = { fg = colors.magenta, italic = true },
        Constant = { fg = colors.red },
        String = { fg = colors.green },
        Character = { fg = colors.green },
        Number = { fg = colors.yellow },
        Boolean = { fg = colors.yellow },
        Float = { fg = colors.yellow },
        Identifier = { fg = colors.fg },
        Function = { fg = colors.accent },
        Statement = { fg = colors.cursor },
        Conditional = { fg = colors.cursor },
        Repeat = { fg = colors.cursor },
        Label = { fg = colors.cursor },
        Operator = { fg = colors.fg },
        Keyword = { fg = colors.cursor },
        Exception = { fg = colors.red },
        PreProc = { fg = colors.blue },
        Include = { fg = colors.blue },
        Define = { fg = colors.blue },
        Macro = { fg = colors.blue },
        PreCondit = { fg = colors.blue },
        Type = { fg = colors.blue },
        StorageClass = { fg = colors.blue },
        Structure = { fg = colors.blue },
        Typedef = { fg = colors.blue },
        Special = { fg = colors.cyan },
        SpecialChar = { fg = colors.cyan },
        Tag = { fg = colors.cyan },
        Delimiter = { fg = colors.fg },
        SpecialComment = { fg = colors.magenta },
        Debug = { fg = colors.red },

        -- =============================================
        -- Tree-sitter Highlight Groups
        -- =============================================
        -- Comments
        ["@comment"] = { fg = colors.magenta, italic = true },
        ["@comment.documentation"] = { fg = colors.magenta, italic = true },

        -- Strings & Characters
        ["@string"] = { fg = colors.green },
        ["@string.regex"] = { fg = colors.cyan },
        ["@string.escape"] = { fg = colors.red },
        ["@string.special"] = { fg = colors.cyan },
        ["@character"] = { fg = colors.green },
        ["@character.special"] = { fg = colors.cyan },

        -- Numbers & Booleans
        ["@number"] = { fg = colors.yellow },
        ["@number.float"] = { fg = colors.yellow },
        ["@boolean"] = { fg = colors.yellow },

        -- Functions & Methods
        ["@function"] = { fg = colors.accent },
        ["@function.builtin"] = { fg = colors.accent },
        ["@function.macro"] = { fg = colors.blue },
        ["@method"] = { fg = colors.accent },
        ["@constructor"] = { fg = colors.blue },

        -- Keywords & Operators
        ["@keyword"] = { fg = colors.cursor },
        ["@keyword.function"] = { fg = colors.cursor },
        ["@keyword.operator"] = { fg = colors.cursor },
        ["@keyword.import"] = { fg = colors.blue },
        ["@keyword.storage"] = { fg = colors.blue },
        ["@operator"] = { fg = colors.fg },

        -- Variables & Identifiers
        ["@variable"] = { fg = colors.fg },
        ["@variable.builtin"] = { fg = colors.red },
        ["@parameter"] = { fg = colors.fg },
        ["@field"] = { fg = colors.fg },
        ["@property"] = { fg = colors.fg },

        -- Types
        ["@type"] = { fg = colors.blue },
        ["@type.builtin"] = { fg = colors.blue },
        ["@type.definition"] = { fg = colors.blue },

        -- Constants
        ["@constant"] = { fg = colors.red },
        ["@constant.builtin"] = { fg = colors.red },
        ["@constant.macro"] = { fg = colors.blue },

        -- Attributes & Decorators
        ["@attribute"] = { fg = colors.blue },
        ["@decorator"] = { fg = colors.blue },

        -- Tags (HTML/XML)
        ["@tag"] = { fg = colors.red },
        ["@tag.attribute"] = { fg = colors.fg },
        ["@tag.delimiter"] = { fg = colors.fg },

        -- Diagnostics
        ["@diagnostic.error"] = { fg = colors.red },
        ["@diagnostic.warning"] = { fg = colors.yellow },
        ["@diagnostic.info"] = { fg = colors.blue },
        ["@diagnostic.hint"] = { fg = colors.green },

        -- =============================================
        -- Diagnostic Highlight Groups
        -- =============================================
        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.blue },
        DiagnosticHint = { fg = colors.green },
        DiagnosticVirtualTextError = { bg = colors.selection_bg, fg = colors.red },
        DiagnosticVirtualTextWarn = { bg = colors.selection_bg, fg = colors.yellow },
        DiagnosticVirtualTextInfo = { bg = colors.selection_bg, fg = colors.blue },
        DiagnosticVirtualTextHint = { bg = colors.selection_bg, fg = colors.green },
        DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.blue },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.green },
        DiagnosticSignError = { fg = colors.red },
        DiagnosticSignWarn = { fg = colors.yellow },
        DiagnosticSignInfo = { fg = colors.blue },
        DiagnosticSignHint = { fg = colors.green },

        -- =============================================
        -- Diff Highlight Groups
        -- =============================================
        DiffAdd = { bg = colors.selection_bg, fg = colors.green },
        DiffChange = { bg = colors.selection_bg, fg = colors.yellow },
        DiffDelete = { bg = colors.selection_bg, fg = colors.red },
        DiffText = { bg = colors.accent, fg = colors.bg },

        -- =============================================
        -- Terminal Color Mappings
        -- =============================================
        TerminalDefault0 = { fg = colors.black },
        TerminalDefault1 = { fg = colors.red },
        TerminalDefault2 = { fg = colors.green },
        TerminalDefault3 = { fg = colors.yellow },
        TerminalDefault4 = { fg = colors.blue },
        TerminalDefault5 = { fg = colors.magenta },
        TerminalDefault6 = { fg = colors.cyan },
        TerminalDefault7 = { fg = colors.white },
        TerminalDefault8 = { fg = colors.bright_black },
        TerminalDefault9 = { fg = colors.bright_red },
        TerminalDefault10 = { fg = colors.bright_green },
        TerminalDefault11 = { fg = colors.bright_yellow },
        TerminalDefault12 = { fg = colors.bright_blue },
        TerminalDefault13 = { fg = colors.bright_magenta },
        TerminalDefault14 = { fg = colors.bright_cyan },
        TerminalDefault15 = { fg = colors.bright_white },
    }
end

return M
