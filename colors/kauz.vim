" vim: set foldmethod=marker foldlevel=2:
"   _                               _
"  | | __ __ _  _   _  ____ __   __(_) _ __ ___
"  | |/ // _` || | | ||_  / \ \ / /| || '_ ` _ \
"  |   <| (_| || |_| | / /  _\ V / | || | | | | |
"  |_|\_\\__,_| \__,_|/___|(_)\_/  |_||_| |_| |_|
" ------------------------------------------------------------------------------
" File: kauz.vim
" Description: Another dark colorscheme for vim.
" Author: Timm Stelzer <timmstelzer@gmail.com>
" Source: https://github.com/tstelzer/welpe.vim
" ------------------------------------------------------------------------------
" GLOBAL SETTINGS {{{
" ------------------------------------------------------------------------------

set background=dark

hi clear

if exists("syntax_on")
 syntax reset
endif

let colors_name = "kauz"

" }}}
" HIGHLIGHTING FUNCTION {{{
" ------------------------------------------------------------------------------

if !exists("*s:H")
  function s:H(group,fg,bg,style,special)

    " On gVim 'guisp' is used to colorize underline/undercurl.
    " To reduce visual redundancy, we void the foreground color
    " if it mirrors the special color.
    let l:guifg = empty(a:fg) ? "NONE" : a:fg[0]
    let l:ctermfg = empty(a:fg) ? "NONE" : a:fg[1]

    let l:guibg = empty(a:bg) ? "NONE" : a:bg[0]
    let l:ctermbg = empty(a:bg) ? "NONE" : a:bg[1]

    let l:gstyle = empty(a:style) ? "NONE" : a:style
    let l:cstyle = empty(a:style) ? "NONE" : a:style

    let l:guisp = empty(a:special) ? s:red_light[0] : a:special[0]

    execute "hi ".a:group
          \ ." guifg=".l:guifg." ctermfg=".l:ctermfg
          \ ." guibg=".l:guibg." ctermbg=".l:ctermbg
          \ ." gui=".l:gstyle." cterm=".l:cstyle
          \ ." guisp=".l:guisp
  endfunction
endif

" }}}
" PALETTE {{{
" ------------------------------------------------------------------------------

let s:foreground_light = [ '#ffffff', 15, 15, 7]
let s:foreground = ['#d4d4d4', 253, 15, 7]
let s:foreground_dark = [ '#a8a8a8', 250, 15, 7 ]

let s:neutral = [ '#808080', 244, 7, 7]

let s:background_light = [ '#323b3c', 237, 0, 0]
let s:background = ['#1e1e1e', 17, 4, 4]
let s:background_dark = [ '#1c1c1c', 234, 0, 0 ]

let s:red_dark = ['#621d29', 52, 1, 1]
let s:red_light = ['#b95c6c', 167, 1, 1]

let s:green_dark = ['#2d5a1a', 22, 2, 2]
let s:green_light = ['#a0be93', 120, 2, 2]

let s:yellow_dark = ['#cd9731', 214, 3, 3]
let s:yellow_light = ['#ffd78a', 229, 11, 3]

let s:blue_dark = ['#123850', 18, 12, 4]
let s:blue_light = ['#4980ad', 69, 4, 4]

let s:magenta_dark = ['#894582', 92, 5, 5]
let s:magenta_light = ['#dbb0d7', 224, 13, 5]

let s:cyan_dark = ['#109f83', 81, 14, 6]
let s:cyan_light = ['#acf0e3', 195, 14, 6]

" }}}
" INTERFACE {{{
" ------------------------------------------------------------------------------

call s:H("Normal", s:foreground, s:background, "", "")
call s:H("ColorColumn", "", s:background_light, "", "")
call s:H("Conceal", "", "", "", "")
call s:H("Cursor", s:background_dark, s:foreground_light, "", "")
call s:H("iCursor", s:background_dark, s:foreground_light, "", "")
call s:H("CursorColumn", "", s:background_light, "", "")
call s:H("CursorLine", "", s:background_light, "", "")
call s:H("CursorLineNr", s:foreground_light, s:background, "", "")
call s:H("DiffAdd", "", s:green_dark, "", "")
call s:H("DiffChange", "", s:blue_dark, "", "")
call s:H("DiffDelete", "", s:red_dark, "", "")
call s:H("DiffText", "", s:blue_dark, "", "")
call s:H("Directory", s:blue_light, "", "", "")
call s:H("ErrorMsg", s:red_light, "", "bold", "")
call s:H("FoldColumn", "", s:background, "", "")
call s:H("Folded", s:cyan_light, s:background, "", "")
call s:H("IncSearch", s:background_dark, s:yellow_dark, "", "")
call s:H("LineNr", s:neutral, s:background, "", "")
call s:H("MatchParen", s:background_dark, s:yellow_dark, "bold", "")
call s:H("ModeMsg", s:blue_light, s:background, "", "")
call s:H("MoreMsg", s:blue_light, s:background, "", "")
call s:H("NonText", s:neutral, "", "", "")
call s:H("Pmenu", "", s:blue_dark, "", "")
call s:H("PmenuSbar", "", s:blue_dark, "", "")
call s:H("PmenuSel", s:yellow_light, s:blue_dark, "bold", "")
call s:H("PmenuThumb", s:green_light, "", "", "")
call s:H("Question", s:cyan_light, "", "bold", "")
call s:H("Search", s:background_dark, s:yellow_light, "", "")
call s:H("SignColumn", s:foreground_light, s:background, "", "")
call s:H("SpecialKey", s:yellow_light, "", "", "")
call s:H("SpellBad", s:background, s:red_light, "", "")
call s:H("SpellRare", s:background, s:green_light, "", "")
call s:H("SpellCap", s:background, s:blue_light, "", "")
call s:H("SpellLocal", s:background, s:yellow_light, "", "")
call s:H("StatusLine", s:foreground, s:blue_dark, "", "")
call s:H("StatusLineNC", s:neutral, s:background, "", "")
call s:H("TabLineSel", s:foreground_dark, s:background_dark, "", "")
call s:H("TabLine", s:neutral, s:foreground, "", "")
call s:H("TabLineFill", s:background_dark, s:foreground_dark, "", "")
call s:H("Title", "", "", "bold", "")
call s:H("VertSplit", s:neutral, "", "", "")
call s:H("Visual", "", "", "reverse", "")
call s:H("WildMenu", s:magenta_light, "", "", "")
call s:H("WarningMsg", s:red_light, "", "", "")

" }}}
" SYNTAX {{{
" -----------------------------------------------------------------------------

call s:H("Comment", s:neutral, "", "", "")

call s:H("Constant", s:magenta_light, "", "", "")
" the following groups inherit constant if commented out
call s:H("String", s:green_light, "", "", "")
call s:H("Character", "", "", "bold", "")
call s:H("Number", "", "", "bold", "")
" call s:H("Boolean", s:boolean, "", "")
call s:H("Float", "", "", "bold", "")

call s:H("Identifier", "", "", "", "")
" the following groups inherit identifier if commented out
call s:H("Function", s:yellow_dark, "", "", "")

call s:H("Statement", s:red_light, "", "", "")
" the following groups inherit statement if commented out
" call s:H("Conditional", s:statement, "", "")
" call s:H("Repeat", s:repeat, "", "")
" call s:H("Label", s:label, "", "")
call s:H("Operator", "", "", "", "")
call s:H("Keyword", s:blue_light, "", "", "")
" call s:H("Exception", s:exception, "", "")

call s:H("PreProc", s:cyan_light, "", "", "")
" the following groups inherit preproc if commented out
" call s:H("Include", s:include, "", "")
" call s:H("Define", s:define, "", "")
" call s:H("Macro", s:macro, "", "")
" call s:H("PreCondit", s:precondit, "", "")

call s:H("Type", "", "", "", "")
" the following groups inherit type if commented out
call s:H("StorageClass", s:blue_light, "", "", "")
" call s:H("Structure", s:structure, "", "")
" call s:H("Typedef", s:typedef, "", "")

call s:H("Special", s:magenta_light, "", "", "")
" the following groups inherit special if commented out
" call s:H("SpecialChar", s:neutral, "", "")
" call s:H("Tag", s:tag, "", "")
call s:H("Delimiter", "", "", "", "")
" call s:H("SpecialComment", s:specialcomment, "", "")
call s:H("Debug", s:yellow_light, s:background, "", "")

call s:H("Underlined", "", "", "", "")

call s:H("Ignore", s:foreground_dark, "", "", "")

call s:H("Error", s:red_light, s:background, "", "")

call s:H("Todo", s:magenta_light, "", "bold", "")

" }}}
" HELPER SYNTAX {{{
" -----------------------------------------------------------------------------

hi link Noise Normal
call s:H("Warning", s:yellow_light, s:background, "", "")
hi link OptionalParameters Normal

call s:H("User1", s:background_dark, s:yellow_light, "", "")
call s:H("User2", s:background_dark, s:blue_light, "", "")

" }}}
" QUICKFIX {{{
" -----------------------------------------------------------------------------

hi! link qfLineNr LineNr
hi! link qfFileName Directory
hi! link qfError ErrorMsg
hi! link qfSeparator VertSplit

" }}}
" VIMSCRIPT {{{
" -----------------------------------------------------------------------------

hi! link vimSet Normal
hi! link vimSetSep Delimiter
hi! link vimFunc Function
hi! link vimFuncSID vimFunc
hi! link vimFunction vimFunc
hi! link vimUserFunc vimFunc
hi! link vimIsCommand Statement
hi! link vimOperParen Delimiter
hi! link vimCommentTitle Title
hi! link vimHiBang Special
hi! link vimCmdSep Delimiter

" }}}
" HTML {{{
" -----------------------------------------------------------------------------
" recommended https://github.com/othree/html5.vim

call s:H("htmlBold", s:foreground_light, "", "bold", "")
call s:H("htmlItalic", s:foreground_light, "", "italic", "")
hi! link htmlTag Statement
hi! link htmlTagName htmlTag
hi! link htmlTagN htmlTag
hi! link htmlEndTag htmlTag
hi! link htmlSpecialChar Character

" }}}
" MARKDOWN {{{
" -----------------------------------------------------------------------------

call s:H("markdownCode", "", "", "inverse", "")
hi! link markdownCodeBlock markdownCode
hi! link markdownItalicDelimiter mkdItalic
hi! link markdownBoldDelimiter mkdBold
hi! link markdownUrl String
hi! link markdownItalic htmlItalic

" }}}
" PLASTICBOY MARKDOWN {{{
" -----------------------------------------------------------------------------

call s:H("mkdItalic", s:foreground_dark, "" , "", "")
call s:H("mkdBold", s:foreground_dark, "" , "", "")
call s:H("mkdBold", s:foreground_dark, "" , "", "")
hi! link mkdCode markdownCode
hi! link mkdCodeStart Ignore
hi! link mkdCodeEnd Ignore
hi! link mkdListItem Ignore
hi! link mkdListItem Ignore

" }}}
" ASCIIDOC {{{
" -----------------------------------------------------------------------------

hi! link asciidocQuotedEmphasized2 String
hi! link asciidocQuotedEmphasized1 String

" }}}
" PANDOC {{{
" -----------------------------------------------------------------------------

hi! link pandocNoFormatted Function
hi! link pandocEmphasis htmlItalic
hi! link pandocUListItemBullet Special

" }}}
" CSS {{{
" -----------------------------------------------------------------------------
" recommended https://github.com/JulesWang/css.vim
" hail2u/vim-css3-syntax

hi! link cssVendor cssProp
hi! link cssSelectorOp Noise
hi! link cssSelectorOp2 Noise
hi! link cssAttrComma Noise
hi! link cssBraces Noise
hi! link cssUnitDecorators Delimiter

" }}}
" PHP {{{
" -----------------------------------------------------------------------------
" recommended https://github.com/StanAngeloff/php.vim
" https://github.com/Seb-C/better-indent-support-for-php-with-html

hi! link phpVarSelector Identifier
hi! link phpParent Delimiter
hi! link phpFunction Normal

" }}}
" VIM-SNEAK {{{
" -----------------------------------------------------------------------------

hi! link Sneak Search
hi! link SneakLabel IncSearch
hi! link SneakScope IncSearch

" }}}
" INCSEARCH {{{
" -----------------------------------------------------------------------------

hi! link IncSearchCursor IncSearch

" }}}
" JAVASCRIPT {{{
" -----------------------------------------------------------------------------

hi! link javaScriptBraces Delimiter
hi! link javaScriptMessage Noise
hi! link javaScriptNumber Number

" recommended https://github.com/pangloss/vim-javascript

hi! link jsFunction Keyword
hi! link jsGlobalNodeObjects PreProc
hi! link jsGlobalObjects PreProc
hi! link jsStorageClass StorageClass
hi! link jsFuncCall Function
hi! link jsFuncName Function
hi! link jsArrowFunction Operator
hi! link jsUndefined Constant
hi! link jsNull Constant

" }}}
" PYTHON {{{
" -----------------------------------------------------------------------------
" recommended https://github.com/purpleP/python-syntax

hi! link pythonStrTemplate String
hi! link pythonInstanceVariable Keyword
hi! link pythonNone Keyword
hi! link pythonBoolean Keyword

" }}}
" SCSS {{{
" -----------------------------------------------------------------------------
" recommended https://github.com/cakebaker/scss-syntax.vim

hi! link scssMixinParams Delimiter
hi! link scssSelectorChar Noise
hi! link scssAmpersand Noise

" }}}
" AUTOHOTKEY {{{
" -----------------------------------------------------------------------------

hi! def link autohotkeyVariable Identifier
hi! def link autohotkeyVariableDelimiter Delimiter
hi! def link autohotkeyBuiltinVariable autohotkeyVariable

" }}}
" GIT {{{
" -----------------------------------------------------------------------------

hi! link gitDiffAdded DiffAdded
hi! link gitDiffRemoved DiffDelete

" }}}
" GITGUTTER {{{
" -----------------------------------------------------------------------------

call s:H("GitGutterAdd", s:green_light, s:background, "", "")
call s:H("GitGutterChange", s:blue_light, s:background, "", "")
call s:H("GitGutterDelete", s:red_light, s:background, "", "")
hi! link GitGutterChangeDelete GitGutterDelete

" }}}
" PUG {{{
" -----------------------------------------------------------------------------

hi! link pugClassChar Noise
hi! link pugAttributesDelimiter Delimiter
hi! link pugClass Identifier

" }}}
" DIRVISH {{{
" -----------------------------------------------------------------------------

hi! link DirvishPathTail Directory
hi! link DirvishPathHead Comment

" }}}
" SYNTASTIC {{{
" -----------------------------------------------------------------------------

hi! link SyntasticErrorSign ErrorMsg
hi! link SyntasticWarningSign Debug
hi! link SyntasticStyleErrorSign ErrorMsg
hi! link SyntasticStyleWarningSign Debug

hi! link SyntasticErrorLine ErrorMsg
hi! link SyntasticWarningLine Debug
hi! link SyntasticStyleErrorLine ErrorMsg
hi! link SyntasticStyleWarningLine Debug

" }}}
" ALE {{{
" -----------------------------------------------------------------------------

hi! link ALEErrorSign Error
hi! link ALEWarningSign Warning

" }}}
" CTRLP {{{
" -----------------------------------------------------------------------------

" the prompt's cursor when moving over the text
hi! link CtrlPPrtCursor SpecialKey
" the matched pattern
hi! link CtrlPMatch SpecialKey
hi! link CtrlPBufferPath Directory
hi! link CtrlPBufferCurMod Title

" }}}
" NEOMAKE {{{
" -----------------------------------------------------------------------------

hi! link NeomakeError Error
hi! link NeomakeWarning Debug
hi! link NeomakeInfo Question
hi! link NeomakeMessage Normal

" }}}
" ULTISNIPS {{{
" -----------------------------------------------------------------------------

hi! link snipLeadingSpaces Noise

" }}}
" DIFF {{{
" -----------------------------------------------------------------------------

hi! link DiffAdded DiffAdd
hi! link diffRemoved DiffDelete

" }}}
" CLOJURE {{{
" -----------------------------------------------------------------------------

hi! link clojureSymbol Identifier
hi! link clojureKeyword Keyword
hi! link clojureSpecial Function
hi! link clojureDefine Function
hi! link clojureMacro Function
hi! link clojureVarArg Noise
" }}}

" RAINBOW PARENS {{{
" -----------------------------------------------------------------------------
call s:H("rainbowParensShell16", s:foreground_light, "", "", "")
call s:H("rainbowParensShell15", s:blue_light, "", "", "")
call s:H("rainbowParensShell14", s:yellow_light, "", "", "")
call s:H("rainbowParensShell13", s:green_light, "", "", "")
call s:H("rainbowParensShell12", s:red_light, "", "", "")
call s:H("rainbowParensShell11", s:cyan_light, "", "", "")
call s:H("rainbowParensShell10", s:magenta_light, "", "", "")
call s:H("rainbowParensShell9", s:foreground_light, "", "", "")
call s:H("rainbowParensShell8", s:blue_light, "", "", "")
call s:H("rainbowParensShell7", s:yellow_light, "", "", "")
call s:H("rainbowParensShell6", s:green_light, "", "", "")
call s:H("rainbowParensShell5", s:red_light, "", "", "")
call s:H("rainbowParensShell4", s:cyan_light, "", "", "")
call s:H("rainbowParensShell3", s:magenta_light, "", "", "")
call s:H("rainbowParensShell2", s:foreground_light, "", "", "")
call s:H("rainbowParensShell1", s:blue_light, "", "", "")
" }}}
