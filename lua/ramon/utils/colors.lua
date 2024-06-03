local M = {
    norm_fg = '#cccccc',
    norm_bg = '#1e2026',

    dark_red = '#D16969',
    orange = '#f9ae28',
    brown = '#CE9178',
    yellow = '#DCDCAA',
    yellow_orange = '#D7BA7D',
    green = '#6A9955',
    blue_green = '#4EC9B0',
    light_green = '#B5CEA8',
    blue = '#4fc1ff',
    blue2 = '#2aaaff',
    light_blue = '#9CDCFE',
    dark_blue = '#569CD6',
    dark_pink = '#C586C0',
    bright_pink = '#f92672',
    -- purple = '#ae81ff',
    purple = '#9381ff',

    white = '#ffffff',
    gray = '#51504f', -- StatuslineNC's fg
    gray2 = '#6e7681', -- LineNr (editorLineNumber.foreground)
    gray3 = '#808080',
    gray4 = '#9d9d9d',
    black = '#2d2d2d', -- TabLine
    black2 = '#252526',
    black3 = '#282828', -- CursorLine (editor.lineHighlightBorder). Or use #2a2d2e (list.hoverBackground) for a brighter color
    black4 = '#181818', -- Statusline

    error_red = '#F14C4C',
    warn_yellow = '#CCA700',
    info_blue = '#3794ff',
    hint_gray = '#B0B0B0',
    ok_green = '#89d185', -- color for success, so I use notebookStatusSuccessIcon.foreground

    selection_blue = '#04395e',
    folded_blue = '#212d3a', -- editor.foldBackground
    float_border_fg = '#454545',
    indent_guide_fg = '#404040',
    indent_guide_context_fg = '#707070',
    label_fg = '#c8c8c8',
}

M.setTransparentBackground = function()
    local none = 'NONE'
    vim.api.nvim_set_hl(0, 'Normal', { bg = none })

    vim.api.nvim_set_hl(0, 'SignColumn', { bg = none })

    vim.api.nvim_set_hl(0, 'NormalNC', { bg = none })

    vim.api.nvim_set_hl(0, 'MsgArea', { bg = none })

    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = none })

    vim.api.nvim_set_hl(0, 'NvimTreeNormal', { bg = none })

    vim.cmd("let &fcs='eob: '")
end

return M
