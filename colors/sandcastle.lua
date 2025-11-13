-- Sandcastle colorscheme for Neovim
-- Ported from Zed Legacy: Sandcastle theme
-- Source: https://github.com/zed-extensions/legacy-themes/blob/main/themes/sandcastle.json

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "sandcastle"

-- Color palette from Zed theme
local colors = {
  -- UI colors
  bg = "#282c33",
  bg_surface = "#2b3038",
  bg_alt = "#333944",
  border = "#3d4350",
  border_variant = "#313741",
  border_focused = "#223131",

  -- Text colors
  fg = "#fdf4c1",
  fg_muted = "#a69782",
  fg_placeholder = "#827568",

  -- Accent colors
  accent = "#518b8b",
  teal = "#518b8b",
  orange = "#a07d3a",
  sage = "#83a598",
  pink = "#b3627a",
  brown = "#a87222",
  cream = "#d5c5a1",
  olive = "#727d68",
  comment = "#a89984",

  -- Status colors
  error = "#b3627a",
  warning = "#a07d3a",
  success = "#83a598",
  info = "#518b8b",
  hint = "#727d68",

  -- Terminal colors
  black = "#282c33",
  red = "#b3627a",
  green = "#83a598",
  yellow = "#a07d3a",
  blue = "#518b8b",
  magenta = "#a87222",
  cyan = "#83a598",
  white = "#fdf4c1",
}

-- Helper function to set highlight groups
local function hi(group, opts)
  local cmd = "highlight " .. group
  if opts.fg then
    cmd = cmd .. " guifg=" .. opts.fg
  end
  if opts.bg then
    cmd = cmd .. " guibg=" .. opts.bg
  end
  if opts.sp then
    cmd = cmd .. " guisp=" .. opts.sp
  end
  if opts.style then
    cmd = cmd .. " gui=" .. opts.style
  end
  if opts.link then
    cmd = "highlight! link " .. group .. " " .. opts.link
  end
  vim.cmd(cmd)
end

-- Editor UI
hi("Normal", { fg = colors.fg, bg = colors.bg })
hi("NormalFloat", { fg = colors.fg, bg = colors.bg_surface })
hi("NormalNC", { fg = colors.fg, bg = colors.bg })
hi("SignColumn", { bg = colors.bg })
hi("LineNr", { fg = colors.fg_muted, bg = colors.bg })
hi("CursorLineNr", { fg = colors.accent, bg = colors.bg })
hi("CursorLine", { bg = colors.bg_surface })
hi("CursorColumn", { bg = colors.bg_surface })
hi("ColorColumn", { bg = colors.bg_surface })
hi("VertSplit", { fg = colors.border })
hi("WinSeparator", { fg = colors.border })
hi("Visual", { bg = colors.border_focused })
hi("VisualNOS", { bg = colors.border_focused })
hi("Search", { fg = colors.bg, bg = colors.orange })
hi("IncSearch", { fg = colors.bg, bg = colors.accent })
hi("CurSearch", { fg = colors.bg, bg = colors.orange })
hi("MatchParen", { fg = colors.orange, style = "bold" })
hi("Folded", { fg = colors.fg_muted, bg = colors.bg_surface })
hi("FoldColumn", { fg = colors.fg_muted, bg = colors.bg })
hi("Pmenu", { fg = colors.fg, bg = colors.bg_surface })
hi("PmenuSel", { fg = colors.bg, bg = colors.accent })
hi("PmenuSbar", { bg = colors.bg_surface })
hi("PmenuThumb", { bg = colors.border })
hi("StatusLine", { fg = colors.fg, bg = colors.bg_surface })
hi("StatusLineNC", { fg = colors.fg_muted, bg = colors.bg_surface })
hi("TabLine", { fg = colors.fg_muted, bg = colors.bg_surface })
hi("TabLineSel", { fg = colors.fg, bg = colors.bg })
hi("TabLineFill", { bg = colors.bg_surface })
hi("WildMenu", { fg = colors.bg, bg = colors.accent })
hi("Directory", { fg = colors.teal })
hi("Title", { fg = colors.accent, style = "bold" })
hi("Conceal", { fg = colors.fg_placeholder })
hi("NonText", { fg = colors.border })
hi("SpecialKey", { fg = colors.border })
hi("Whitespace", { fg = colors.border })
hi("EndOfBuffer", { fg = colors.bg })

-- Syntax highlighting
hi("Comment", { fg = colors.comment, style = "italic" })
hi("Constant", { fg = colors.sage })
hi("String", { fg = colors.orange })
hi("Character", { fg = colors.orange })
hi("Number", { fg = colors.sage })
hi("Boolean", { fg = colors.sage })
hi("Float", { fg = colors.sage })
hi("Identifier", { fg = colors.fg })
hi("Function", { fg = colors.orange })
hi("Statement", { fg = colors.teal })
hi("Conditional", { fg = colors.teal })
hi("Repeat", { fg = colors.teal })
hi("Label", { fg = colors.teal })
hi("Operator", { fg = colors.orange })
hi("Keyword", { fg = colors.teal })
hi("Exception", { fg = colors.teal })
hi("PreProc", { fg = colors.teal })
hi("Include", { fg = colors.teal })
hi("Define", { fg = colors.teal })
hi("Macro", { fg = colors.teal })
hi("PreCondit", { fg = colors.teal })
hi("Type", { fg = colors.teal })
hi("StorageClass", { fg = colors.teal })
hi("Structure", { fg = colors.teal })
hi("Typedef", { fg = colors.teal })
hi("Special", { fg = colors.cream })
hi("SpecialChar", { fg = colors.sage })
hi("Tag", { fg = colors.teal })
hi("Delimiter", { fg = colors.cream })
hi("SpecialComment", { fg = colors.olive })
hi("Debug", { fg = colors.pink })
hi("Underlined", { style = "underline" })
hi("Ignore", { fg = colors.fg_placeholder })
hi("Error", { fg = colors.error })
hi("Todo", { fg = colors.warning, style = "bold" })

-- Treesitter
hi("@variable", { fg = colors.fg })
hi("@variable.builtin", { fg = colors.teal })
hi("@variable.parameter", { fg = colors.fg })
hi("@variable.member", { fg = colors.fg })
hi("@constant", { fg = colors.sage })
hi("@constant.builtin", { fg = colors.sage })
hi("@module", { fg = colors.teal })
hi("@string", { fg = colors.orange })
hi("@string.escape", { fg = colors.sage })
hi("@string.special", { fg = colors.sage })
hi("@character", { fg = colors.orange })
hi("@number", { fg = colors.sage })
hi("@boolean", { fg = colors.sage })
hi("@float", { fg = colors.sage })
hi("@function", { fg = colors.orange })
hi("@function.builtin", { fg = colors.orange })
hi("@function.macro", { fg = colors.teal })
hi("@function.method", { fg = colors.orange })
hi("@constructor", { fg = colors.teal })
hi("@keyword", { fg = colors.teal })
hi("@keyword.function", { fg = colors.teal })
hi("@keyword.operator", { fg = colors.teal })
hi("@keyword.return", { fg = colors.teal })
hi("@keyword.conditional", { fg = colors.teal })
hi("@keyword.repeat", { fg = colors.teal })
hi("@operator", { fg = colors.orange })
hi("@punctuation.bracket", { fg = colors.cream })
hi("@punctuation.delimiter", { fg = colors.cream })
hi("@punctuation.special", { fg = colors.cream })
hi("@comment", { fg = colors.comment, style = "italic" })
hi("@type", { fg = colors.teal })
hi("@type.builtin", { fg = colors.teal })
hi("@type.qualifier", { fg = colors.teal })
hi("@tag", { fg = colors.teal })
hi("@tag.attribute", { fg = colors.orange })
hi("@tag.delimiter", { fg = colors.cream })
hi("@property", { fg = colors.fg })
hi("@attribute", { fg = colors.teal })
hi("@namespace", { fg = colors.teal })

-- LSP
hi("DiagnosticError", { fg = colors.error })
hi("DiagnosticWarn", { fg = colors.warning })
hi("DiagnosticInfo", { fg = colors.info })
hi("DiagnosticHint", { fg = colors.hint })
hi("DiagnosticUnderlineError", { sp = colors.error, style = "underline" })
hi("DiagnosticUnderlineWarn", { sp = colors.warning, style = "underline" })
hi("DiagnosticUnderlineInfo", { sp = colors.info, style = "underline" })
hi("DiagnosticUnderlineHint", { sp = colors.hint, style = "underline" })
hi("LspReferenceText", { bg = colors.border_variant })
hi("LspReferenceRead", { bg = colors.border_variant })
hi("LspReferenceWrite", { bg = colors.border_variant })
hi("LspSignatureActiveParameter", { fg = colors.orange, style = "bold" })

-- Git
hi("DiffAdd", { fg = colors.success, bg = colors.bg_surface })
hi("DiffChange", { fg = colors.warning, bg = colors.bg_surface })
hi("DiffDelete", { fg = colors.error, bg = colors.bg_surface })
hi("DiffText", { fg = colors.accent, bg = colors.bg_surface })
hi("GitSignsAdd", { fg = colors.success })
hi("GitSignsChange", { fg = colors.warning })
hi("GitSignsDelete", { fg = colors.error })

-- Telescope
hi("TelescopeBorder", { fg = colors.border })
hi("TelescopePromptBorder", { fg = colors.border_focused })
hi("TelescopeResultsBorder", { fg = colors.border })
hi("TelescopePreviewBorder", { fg = colors.border })
hi("TelescopeSelection", { fg = colors.fg, bg = colors.border_focused })
hi("TelescopeSelectionCaret", { fg = colors.accent })
hi("TelescopeMultiSelection", { fg = colors.sage })
hi("TelescopeMatching", { fg = colors.accent, style = "bold" })

-- Neo-tree
hi("NeoTreeNormal", { fg = colors.fg, bg = colors.bg_surface })
hi("NeoTreeNormalNC", { fg = colors.fg, bg = colors.bg_surface })
hi("NeoTreeDirectoryIcon", { fg = colors.teal })
hi("NeoTreeDirectoryName", { fg = colors.teal })
hi("NeoTreeGitModified", { fg = colors.warning })
hi("NeoTreeGitAdded", { fg = colors.success })
hi("NeoTreeGitDeleted", { fg = colors.error })
hi("NeoTreeGitUntracked", { fg = colors.hint })

-- WhichKey
hi("WhichKey", { fg = colors.accent })
hi("WhichKeyGroup", { fg = colors.teal })
hi("WhichKeyDesc", { fg = colors.fg })
hi("WhichKeySeparator", { fg = colors.fg_muted })
hi("WhichKeyFloat", { bg = colors.bg_surface })
hi("WhichKeyBorder", { fg = colors.border })

-- Notify
hi("NotifyERRORBorder", { fg = colors.error })
hi("NotifyWARNBorder", { fg = colors.warning })
hi("NotifyINFOBorder", { fg = colors.info })
hi("NotifyDEBUGBorder", { fg = colors.hint })
hi("NotifyTRACEBorder", { fg = colors.sage })
hi("NotifyERRORIcon", { fg = colors.error })
hi("NotifyWARNIcon", { fg = colors.warning })
hi("NotifyINFOIcon", { fg = colors.info })
hi("NotifyDEBUGIcon", { fg = colors.hint })
hi("NotifyTRACEIcon", { fg = colors.sage })
hi("NotifyERRORTitle", { fg = colors.error })
hi("NotifyWARNTitle", { fg = colors.warning })
hi("NotifyINFOTitle", { fg = colors.info })
hi("NotifyDEBUGTitle", { fg = colors.hint })
hi("NotifyTRACETitle", { fg = colors.sage })

-- Terminal colors
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.border
vim.g.terminal_color_9 = colors.red
vim.g.terminal_color_10 = colors.green
vim.g.terminal_color_11 = colors.yellow
vim.g.terminal_color_12 = colors.blue
vim.g.terminal_color_13 = colors.magenta
vim.g.terminal_color_14 = colors.cyan
vim.g.terminal_color_15 = colors.white
