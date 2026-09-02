local M = {}

function M.colorscheme()
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "ashes"
  vim.o.termguicolors = true

  local colors = {
    base00 = "#0f0f0f",
    base01 = "#393f45",
    base02 = "#565e65",
    base03 = "#747c84",
    base04 = "#adb3ba",
    base05 = "#c7ccd1",
    base06 = "#dfe2e5",
    base07 = "#f3f4f5",
    base08 = "#c7ae95",
    base09 = "#c7c795",
    base0A = "#aec795",
    base0B = "#95c7ae",
    base0C = "#95aec7",
    base0D = "#ae95c7",
    base0E = "#c795ae",
    base0F = "#c79595",
  }

  local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hl("Normal",      { fg = colors.base05, bg = colors.base00 })
  hl("NormalFloat", { fg = colors.base05, bg = colors.base01 })
  hl("FloatBorder", { fg = colors.base03, bg = colors.base01 })
  hl("Cursor",      { fg = colors.base00, bg = colors.base05 })
  hl("CursorLine",  { bg = colors.base01 })
  hl("LineNr",      { fg = colors.base03 })
  hl("CursorLineNr",{ fg = colors.base06 })
  hl("Visual",      { bg = colors.base02 })

  hl("Comment",     { fg = colors.base03, italic = true })
  hl("Constant",    { fg = colors.base09 })
  hl("String",      { fg = colors.base0B })
  hl("Number",      { fg = colors.base09 })
  hl("Boolean",     { fg = colors.base09 })
  hl("Identifier",  { fg = colors.base08 })
  hl("Function",    { fg = colors.base0D })
  hl("Statement",   { fg = colors.base0E })
  hl("Operator",    { fg = colors.base0C })
  hl("Keyword",     { fg = colors.base0E })
  hl("Type",        { fg = colors.base0A })
  hl("Special",     { fg = colors.base0C })
  hl("Delimiter",   { fg = colors.base04 })
  hl("Todo",        { fg = colors.base00, bg = colors.base0A, bold = true })

  hl("ErrorMsg",   { fg = colors.base08, bold = true })
  hl("WarningMsg", { fg = colors.base09 })
  hl("Search",     { fg = colors.base00, bg = colors.base0A })
  hl("IncSearch",  { fg = colors.base00, bg = colors.base09 })
  hl("MatchParen", { fg = colors.base0A, bold = true })

  hl("DiagnosticError", { fg = colors.base08 })
  hl("DiagnosticWarn",  { fg = colors.base09 })
  hl("DiagnosticInfo",  { fg = colors.base0C })
  hl("DiagnosticHint",  { fg = colors.base0D })

  hl("GitSignsAdd",    { fg = colors.base0B })
  hl("GitSignsChange", { fg = colors.base0A })
  hl("GitSignsDelete", { fg = colors.base08 })

  hl("@comment",  { link = "Comment" })
  hl("@string",   { link = "String" })
  hl("@function", { link = "Function" })
  hl("@keyword",  { link = "Keyword" })
  hl("@type",     { link = "Type" })

  vim.g.terminal_color_0  = colors.base00
  vim.g.terminal_color_1  = colors.base08
  vim.g.terminal_color_2  = colors.base0B
  vim.g.terminal_color_3  = colors.base0A
  vim.g.terminal_color_4  = colors.base0D
  vim.g.terminal_color_5  = colors.base0E
  vim.g.terminal_color_6  = colors.base0C
  vim.g.terminal_color_7  = colors.base05
  vim.g.terminal_color_8  = colors.base03
  vim.g.terminal_color_9  = colors.base08
  vim.g.terminal_color_10 = colors.base0B
  vim.g.terminal_color_11 = colors.base0A
  vim.g.terminal_color_12 = colors.base0D
  vim.g.terminal_color_13 = colors.base0E
  vim.g.terminal_color_14 = colors.base0C
  vim.g.terminal_color_15 = colors.base07
end

return M









