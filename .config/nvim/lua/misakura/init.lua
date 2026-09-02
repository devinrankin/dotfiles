local M = {};

local colors = {
  bg        = "#0f0f0f";
  gray0     = "#141414";
  gray1     = "#1f1e1e";
  gray2     = "#272a28";
  gray3     = "#403b3b";
  gray4     = "#5f5858";
  gray5     = "#756c6c";
  gray6     = "#827373";
  gray7     = "#9a8d8d";
  gray8     = "#b2a9a9";
  gray9     = "#c7bdbd";
  gray10    = "#ded8d8";
  fg        = "#ebe0e0";
  blue      = "#6199d1";
  lblue     = "#94b3d1";
  red       = "#f16e65";
  lred      = "#f2aba6";
  green     = "#7ec97e";
  lgreen    = "#b7e1b7";
  cyan      = "#6fc3b5";
  lcyan     = "#a5d9d1";
  yellow    = "#f6eba2";
  orange    = "#e8a069";
  magenta   = "#e59acc";
  lmagenta  = "#ecb6da";
  purple    = "#714e75"
}

function M.colorscheme()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.o.background = "dark";
  vim.g.colors_name = "misakura";

  local set = vim.api.nvim_set_hl

  -- ui
  set(0, "Normal",                  { fg = colors.fg, bg = colors.bg })
  set(0, "NormalFloat",             { fg = colors.fg, bg = colors.gray0 })
  set(0, "FloatBorder",             { fg = colors.fg, bg = colors.bg })
  set(0, "CursorLine",              { bg = colors.gray2 })
  set(0, "Visual",                  { bg = colors.gray3 })
  set(0, "Search",                  { fg = colors.bg, bg = colors.red })
  set(0, "IncSearch",               { fg = colors.bg, bg = colors.red })
  set(0, "StatusLine",              { bg = colors.gray0 })
  set(0, "StatusLineNC",            { bg = colors.red })
  set(0, "VertSplit",               { fg = colors.gray8 })
  set(0, "WinSeparator",            { fg = colors.gray8 })
  set(0, "LineNr",                  { fg = colors.gray6 })
  set(0, "CursorLineNr",            { fg = colors.red, bold = true })
  set(0, "SignColumn",              { bg = colors.bg })
  set(0, "Folded",                  { fg = colors.gray8, bg = colors.gray3 })
  
  -- popup
  set(0, "Pmenu",                   { fg = colors.fg, bg = colors.gray0 })
  set(0, "PmenuSel",                { fg = colors.bg, bg = colors.red })
  set(0, "PmenuSbar",               { bg = colors.gray0 })
  set(0, "PmenuThumb",              { bg = colors.red })

  -- syntax
  set(0, "Comment",                 { fg = colors.gray5, italic = true }) 
  set(0, "Constant",                { fg = colors.red, bold = true })
  set(0, "Number",                  { fg = colors.red })
  set(0, "Boolean",                 { fg = colors.red, bold = true, italic = true })
  set(0, "String",                  { fg = colors.green })
  set(0, "Float",                   { link = "Number" })
  set(0, "Identifier",              { fg = colors.red })
  set(0, "Function",                { fg = colors.blue, bold = true })
  set(0, "Statement",               { fg = colors.orange })
  set(0, "Operator",                { fg = colors.cyan })
  set(0, "Keyword",                 { fg = colors.orange })
  set(0, "PreProc",                 { fg = colors.green })
  set(0, "Type",                    { fg = colors.magenta })
  set(0, "Typedef",                 { fg = colors.blue, italic = true })
  set(0, "cTypedef",                { link = "Typedef" })
  set(0, "StorageClass",            { fg = colors.blue, italic = true })
  set(0, "cStorageClass",           { link = "Typedef" })
  set(0, "Special",                 { fg = colors.yellow })

  -- blink
  set(0, "BlinkCmpMenu",            { bg = colors.gray0 })
  set(0, "BlinkCmpMenuBorder",      { fg = colors.gray6, bg = colors.gray1 })
  set(0, "BlinkCmpMenuSelection",   { fg = colors.bg, bg = colors.red })
  set(0, "BlinkCmpLabel",           { fg = colors.fg })
  set(0, "BlinkCmpLabelDetail",     { fg = colors.gray7 })
  set(0, "BlinkCmpLabelDescription",{ fg = colors.gray8 })
  set(0, "BlinkCmpLabelMatch",      { fg = colors.red, bold = true })
  set(0, "BlinkCmpKind",            { fg = colors.cyan })
  set(0, "BlinkCmpDoc",             { fg = colors.fg, bg = colors.gray2 })
  set(0, "BlinkCmpDocBorder",       { fg = colors.gray5, bg = colors.gray2 })  

  if package.loaded['lualine'] then
    require('lualine').setup({
      options = { theme = 'auto' },
    })
  end

end

return M
