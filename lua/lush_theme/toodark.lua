--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- Color Pallete
local red = hsl("#e23f36")
local orange = hsl("#f97f04")
local yellow = hsl("#efd14c")
local green = hsl("#5edb83")
local cyan = hsl("#61ccc4")
local blue = hsl("#61afef")
local purple = hsl("#e579d3")

-- Shades
-- Dark
local dark1 = hsl("#2A2A2A")
local dark2 = hsl("#202020")
local dark3 = hsl("#1C1C1C")
local dark4 = hsl("#181818")
local toodark = hsl("#111111")
local black = hsl("#000000")
-- "Light"
local light1 = hsl("#BBBBBB")
local light2 = hsl("#AAAAAA")
local light3 = hsl("#4A4A4A")
local light4 = hsl("#454545")
local light5 = hsl("#383838")
local light6 = hsl("#303030")
local light7 = hsl("#2F2F2F")
local white = hsl("#DDDDDD")

local theme = lush(function()
  return {

    -- Standard vim colors
    Directory { fg = blue },
    DiffAdd { fg = green },
    DiffChange { fg = orange },
    DiffDelete { fg = red },
    DiffText { bg = orange, fg = toodark },
    EndOfBuffer { fg = light6 },
    ErrorMsg { bg = toodark, fg = red },
    LineNr { fg = light6 },
    CursorLineNr { fg = white, gui = "bold" },
    MatchParen { fg = blue, gui="underline" },
    NonText { fg = light6 },
    Normal { fg = white },
    NormalFloat { bg = dark4 , fg = white },
    CursorLine { bg = dark3 },
    Comment { fg = light3 },
    VertSplit { bg = dark4, fg = white },
    Folded { Normal },
    FoldColumn { Folded },
    SignColumn { Folded },
    Pmenu { bg = light6, fg = white },
    PmenuSel { bg = blue, fg = toodark },
    PmenuSbar { bg = light3 },
    PmenuThumb { bg = light2 },
    Question { fg = green, gui="bold"},
    Search { bg = yellow, fg = toodark },
    SpecialKey { fg = cyan, gui="bold" },
    SpellBad { fg = red.saturate(-10), gui="underline" },
    SpellCap { fg = yellow, gui="bold"},
    SpellLocal { SpellCap, gui="none"},
    SpellRare { SpellBad, gui="none"},
    StatusLine { fg = blue },
    Tabline { fg = blue },
    TablineFill { fg = light3, bg = dark4 },
    TablineSel { fg = blue },
    Title { fg = green, gui="bold"},
    Visual { bg = dark2 },
    VisualNOS { Visual },
    Whitespace { fg = cyan, gui="bold" },
    WarningMsg { fg = yellow },

    -- Syntax highlighting

    Constant       { fg = cyan }, -- (preferred) any constant
    String         { fg = green }, --   a string constant: "this is a string"
    Character      { fg = green }, --  a character constant: 'c', '\n'
    Number         { fg = yellow }, --   a number constant: 234, 0xff
    Boolean        { fg = yellow }, --  a boolean constant: TRUE, false
    Float          { fg = yellow }, --    a floating point constant: 2.3e10

    Identifier     { fg = red }, -- (preferred) any variable name
    Function       { fg = blue }, -- function name (also: methods for classes)

    Statement      { fg = purple }, -- (preferred) any statement
    Conditional    { fg = purple }, --  if, then, else, endif, switch, etc.
    Repeat         { fg = purple }, --   for, do, while, etc.
    Label          { fg = purple }, --    case, default, etc.
    Operator       { fg = purple }, -- "sizeof", "+", "*", etc.
    Keyword        { fg = red }, --  any other keyword
    Exception      { fg = purple }, --  try, catch, throw

    PreProc        { fg = yellow }, -- (preferred) generic Preprocessor
    Include        { fg = blue }, --  preprocessor #include
    Define         { fg = purple }, --   preprocessor #define
    Macro          { fg = purple }, --    same as Define
    PreCondit      { fg = yellow }, --  preprocessor #if, #else, #endif, etc.

    Type           { fg = yellow }, -- (preferred) int, long, char, etc.
    StorageClass   { fg = yellow }, -- static, register, volatile, etc.
    Structure      { fg = yellow }, --  struct, union, enum, etc.
    Typedef        { fg = yellow }, --  A typedef

    Special        { }, -- (preferred) any special symbol
    SpecialChar    { fg = blue }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements


    Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       { gui = "bold" },
    Italic     { gui = "italic" },

    Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error          { ErrorMsg }, -- (preferred) any erroneous construct

    Todo           { fg = yellow, gui="bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- Language specific stuff

    -- Fish
    fishKeyword { fg = purple },
    fishConditional { fg = purple },

    -- HTML

    htmlArg { fg = yellow },
    htmlBold { fg = yellow, gui = "bold" },
    htmlEndTag { fg = white },
    htmlH1 { fg = red },
    htmlH2 { fg = red },
    htmlH3 { fg = red },
    htmlH4 { fg = red },
    htmlH5 { fg = red },
    htmlH6 { fg = red },
    htmlItalic { fg = purple, gui = "italic" },
    htmlLink { fg = cyan, gui = "underline" },
    htmlSpecialChar { fg = yellow },
    htmlSpecialTagName { fg = red },
    htmlTag { fg = white },
    htmlTagN { fg = red },
    htmlTagName { fg = red },
    htmlTitle { fg = white },

    -- Markdown

    markdownBlockquote { fg = Comment.fg },
    markdownBold { fg = yellow, gui = "bold" },
    markdownCode { fg = green },
    markdownCodeBlock { fg = green },
    markdownCodeDelimiter { fg = green },
    markdownH1 { fg = red },
    markdownH2 { fg = red },
    markdownH3 { fg = red },
    markdownH4 { fg = red },
    markdownH5 { fg = red },
    markdownH6 { fg = red },
    markdownHeadingDelimiter { fg = red },
    markdownHeadingRule { fg = Comment.fg },
    markdownId { fg = purple },
    markdownIdDeclaration { fg = blue },
    markdownIdDelimiter { fg = purple },
    markdownItalic { fg = purple, gui = "italic" },
    markdownLinkDelimiter { fg = purple },
    markdownLinkText { fg = blue },
    markdownListMarker { fg = red },
    markdownOrderedListMarker { fg = red },
    markdownRule { fg = Comment.fg },
    markdownUrl { fg = cyan, gui = "underline" },

    -- plasticboy/vim-markdown
    mkdDelimiter { fg = purple },
    mkdHeading { fg = red },
    mkdLink { fg = blue },
    mkdURL { fg = cyan, gui = "underline" },


    -- TeX
    texStatement { fg = purple },
    texSubscripts { fg = yellow },
    texSuperscripts { fg = yellow },
    texTodo { fg = red },
    texBeginEnd { fg = purple },
    texBeginEndName { fg = blue },
    texMathMatcher { fg = blue },
    texMathDelim { fg = blue },
    texDelimiter { fg = yellow },
    texSpecialChar { fg = yellow },
    texCite { fg = blue },
    texRefZone { fg = blue },

    -- TypeScript
    typescriptReserved { fg = purple },
    typescriptEndColons { fg = white },
    typescriptBraces { fg = white },

    -- XML
    xmlAttrib { fg = yellow },
    xmlEndTag { fg = red },
    xmlTag { fg = red },
    xmlTagName { fg = red },

    -- Dashboard.nvim colors
    DashboardHeader { fg = orange },
    DashboardCenter { fg = blue },
    DashboardShortcut { fg = green },
    DashboardFooter { fg = yellow },

    -- EXAMPLES

    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    -- Comment      { }, -- any comment
    -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- ErrorMsg     { }, -- error messages on the command line
    -- VertSplit    { }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal       { }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: normal item.
    -- PmenuSel     { }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine   { }, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine      { }, -- tab pages line, not active tab page label
    -- TabLineFill  { }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- warning messages
    -- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Constant       { }, -- (preferred) any constant
    -- String         { }, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    -- Identifier     { }, -- (preferred) any variable name
    -- Function       { }, -- function name (also: methods for classes)

    -- Statement      { }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    -- PreProc        { }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- Error          { }, -- (preferred) any erroneous construct

    -- Todo           { }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

    }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
