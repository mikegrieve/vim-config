" Vim Color File
" Name: material.vim
" Maintainer: https://github.com/kaicataldo/material.vim
" License: The MIT License (MIT)
" Based On: https://github.com/tyrannicaltoucan/vim-quantum

highlight clear

if exists('syntax_on')
  syntax reset
endif

set background=dark

let g:material_terminal_italics = get(g:, 'material_terminal_italics', 0)

" Background Color 
let s:gray1 = '#191919'

let s:gray2 = '#292929'
let s:gray3 = '#474646'
let s:gray4 = '#6a6c6c'
let s:gray5 = '#ffffff'
let s:red = '#ff5370'
let s:green = '#c3e88d'
let s:yellow = '#ffcb6b'
let s:blue = '#82aaff'
let s:purple = '#c792ea'
let s:cyan = '#89ddff'
let s:orange = '#f78c6c'
let s:indigo = '#BB80B3'
let s:white = '#ffffff'

function! s:HL(group, fg, bg, attr)
  let l:attr = a:attr
  if !g:material_terminal_italics && l:attr ==# 'italic'
    let l:attr = 'none'
  endif

  if !empty(a:fg)
    exec 'hi ' . a:group . ' guifg=' . a:fg
  endif
  if !empty(a:bg)
    exec 'hi ' . a:group . ' guibg=' . a:bg
  endif
  if !empty(a:attr)
    exec 'hi ' . a:group . ' gui=' . l:attr . ' cterm=' . l:attr
  endif
endfun

" Vim Editor
call s:HL('ColorColumn', '', s:gray3, '')
call s:HL('Cursor', s:gray2, s:gray5, '')
call s:HL('CursorColumn', '', s:gray2, '')
call s:HL('CursorLine', '', s:gray2, 'none')
call s:HL('CursorLineNr', s:cyan, s:gray2, 'none')
call s:HL('Directory', s:blue, '', '')
call s:HL('DiffAdd', s:green, s:gray2, 'none')
call s:HL('DiffChange', s:yellow, s:gray2, 'none')
call s:HL('DiffDelete', s:red, s:gray2, 'none')
call s:HL('DiffText', s:blue, s:gray2, 'none')
call s:HL('ErrorMsg', s:red, s:gray1, 'bold')
call s:HL('FoldColumn', s:gray4, s:gray1, '')
call s:HL('Folded', s:gray3, s:gray1, '')
call s:HL('IncSearch', s:yellow, '', '')
call s:HL('LineNr', s:gray3, '', '')
call s:HL('MatchParen', s:gray4, s:cyan, 'bold')
call s:HL('ModeMsg', s:green, '', '')
call s:HL('MoreMsg', s:green, '', '')
call s:HL('NonText', s:gray4, '', 'none')
call s:HL('Normal', s:gray5, s:gray1, 'none')
call s:HL('Pmenu', s:gray5, s:gray3, '')
call s:HL('PmenuSbar', '', s:gray2, '')
call s:HL('PmenuSel', s:gray2, s:cyan, '')
call s:HL('PmenuThumb', '', s:gray4, '')
call s:HL('Question', s:blue, '', 'none')
call s:HL('Search', s:gray1, s:yellow, '')
call s:HL('SignColumn', s:gray5, s:gray1, '')
call s:HL('SpecialKey', s:gray4, '', '')
call s:HL('SpellCap', s:blue, s:gray2, 'undercurl')
call s:HL('SpellBad', s:red, s:gray2, 'undercurl')
call s:HL('StatusLine', s:gray5, s:gray3, 'none')
call s:HL('StatusLineNC', s:gray2, s:gray4, '')
call s:HL('TabLine', s:gray4, s:gray2, 'none')
call s:HL('TabLineFill', s:gray4, s:gray2, 'none')
call s:HL('TabLineSel', s:yellow, s:gray3, 'none')
call s:HL('Title', s:green, '', 'none')
call s:HL('VertSplit', s:gray4, s:gray1, 'none')
call s:HL('Visual', s:gray5, s:gray3, '')
call s:HL('WarningMsg', s:red, '', '')
call s:HL('WildMenu', s:gray2, s:cyan, '')

" Standard Syntax
call s:HL('Comment', s:gray4, '', 'italic')
call s:HL('Constant', s:orange, '', '')
call s:HL('String', s:green, '', '')
call s:HL('Character', s:green, '', '')
call s:HL('Identifier', s:red, '', 'none')
call s:HL('Function', s:yellow, '', '')
call s:HL('Statement', s:purple, '', 'none')
call s:HL('Operator', s:cyan, '', '')
call s:HL('PreProc', s:cyan, '', '')
call s:HL('Include', s:blue, '', '')
call s:HL('Define', s:purple, '', 'none')
call s:HL('Macro', s:purple, '', '')
call s:HL('Type', s:yellow, '', 'none')
call s:HL('Structure', s:cyan, '', '')
call s:HL('Special', s:cyan, '', '')
call s:HL('Underlined', s:blue, '', 'none')
call s:HL('Error', s:red, s:gray1, '')
call s:HL('Todo', s:orange, s:gray1, 'italic')

" CSS
call s:HL('cssAttrComma', s:gray5, '', '')
call s:HL('cssPseudoClassId', s:yellow, '', '')
call s:HL('cssBraces', s:cyan, '', '')
call s:HL('cssClassName', s:yellow, '', '')
call s:HL('cssClassNameDot', s:yellow, '', '')
call s:HL('cssFunctionName', s:blue, '', '')
call s:HL('cssImportant', s:cyan, '', '')
call s:HL('cssIncludeKeyword', s:purple, '', '')
call s:HL('cssTagName', s:red, '', '')
call s:HL('cssMediaType', s:orange, '', '')
call s:HL('cssProp', s:gray5, '', '')
call s:HL('cssSelectorOp', s:cyan, '', '')
call s:HL('cssSelectorOp2', s:cyan, '', '')

" Commit Messages (Git)
call s:HL('gitcommitHeader', s:purple, '', '')
call s:HL('gitcommitUnmerged', s:green, '', '')
call s:HL('gitcommitSelectedFile', s:green, '', '')
call s:HL('gitcommitDiscardedFile', s:red, '', '')
call s:HL('gitcommitUnmergedFile', s:yellow, '', '')
call s:HL('gitcommitSelectedType', s:green, '', '')
call s:HL('gitcommitSummary', s:blue, '', '')
call s:HL('gitcommitDiscardedType', s:red, '', '')
hi link gitcommitNoBranch gitcommitBranch
hi link gitcommitUntracked gitcommitComment
hi link gitcommitDiscarded gitcommitComment
hi link gitcommitSelected gitcommitComment
hi link gitcommitDiscardedArrow gitcommitDiscardedFile
hi link gitcommitSelectedArrow gitcommitSelectedFile
hi link gitcommitUnmergedArrow gitcommitUnmergedFile

" HTML
call s:HL('htmlEndTag', s:blue, '', '')
call s:HL('htmlLink', s:red, '', '')
call s:HL('htmlTag', s:blue, '', '')
call s:HL('htmlTitle', s:gray5, '', '')
call s:HL('htmlSpecialTagName', s:purple, '', '')
call s:HL('htmlArg', s:yellow, '', 'italic')

" Javascript
call s:HL('javaScriptBraces', s:cyan, '', '')
call s:HL('javaScriptNull', s:orange, '', '')
call s:HL('javaScriptIdentifier', s:purple, '', '')
call s:HL('javaScriptNumber', s:orange, '', '')
call s:HL('javaScriptRequire', s:cyan, '', '')
call s:HL('javaScriptReserved', s:purple, '', '')
" pangloss/vim-javascript
call s:HL('jsArrowFunction', s:purple, '', '')
call s:HL('jsAsyncKeyword', s:purple, '', '')
call s:HL('jsExtendsKeyword', s:purple, '', '')
call s:HL('jsClassKeyword', s:purple, '', '')
call s:HL('jsDocParam', s:green, '', '')
call s:HL('jsDocTags', s:cyan, '', '')
call s:HL('jsForAwait', s:purple, '', '')
call s:HL('jsFlowArgumentDef', s:yellow, '', '')
call s:HL('jsFrom', s:cyan, '', '')
call s:HL('jsImport', s:cyan, '', '')
call s:HL('jsExport', s:cyan, '', '')
call s:HL('jsExportDefault', s:cyan, '', '')
call s:HL('jsFuncCall', s:blue, '', '')
call s:HL('jsFunction', s:yellow, '', '')
call s:HL('jsGlobalObjects', s:yellow, '', '')
call s:HL('jsGlobalNodeObjects', s:yellow, '', '')
call s:HL('jsModuleAs', s:purple, '', '')
call s:HL('jsNull', s:orange, '', '')
call s:HL('jsStorageClass', s:purple, '', '')
call s:HL('jsTemplateBraces', s:red, '', '')
call s:HL('jsTemplateExpression', s:red, '', '')
call s:HL('jsThis', s:red, '', '')
call s:HL('jsUndefined', s:orange, '', '')


" Golang 
call s:HL('goFunctionCall', s:blue, '', '')
call s:HL('goReceiverType', s:green, '', '')
call s:HL('goParamName', s:orange, '', '')
call s:HL('goParamType', s:green, '', '')
call s:HL('goTypeDecl', s:purple, '', '')
call s:HL('goTypeName', s:yellow, '', '')
call s:HL('goBuiltins', s:red, '', '')
call s:HL('goType', s:purple, '', '')
call s:HL('goSignedInts', s:purple, '', '')
call s:HL('goUnsignedInts', s:purple, '', '')
call s:HL('goFloats', s:purple, '', '')
call s:HL('goComplexes', s:purple, '', '')

" JSON
call s:HL('jsonBraces', s:cyan, '', '')

" Less
call s:HL('lessAmpersand', s:red, '', '')
call s:HL('lessClassChar', s:yellow, '', '')
call s:HL('lessCssAttribute', s:gray5, '', '')
call s:HL('lessFunction', s:blue, '', '')
call s:HL('lessVariable', s:purple, '', '')

" Markdown
call s:HL('markdownBold', s:yellow, '', 'bold')
call s:HL('markdownCode', s:cyan, '', '')
call s:HL('markdownCodeBlock', s:cyan, '', '')
call s:HL('markdownCodeDelimiter', s:cyan, '', '')
call s:HL('markdownHeadingDelimiter', s:green, '', '')
call s:HL('markdownHeadingRule', s:gray4, '', '')
call s:HL('markdownId', s:purple, '', '')
call s:HL('markdownItalic', s:blue, '', 'italic')
call s:HL('markdownListMarker', s:orange, '', '')
call s:HL('markdownOrderedListMarker', s:orange, '', '')
call s:HL('markdownRule', s:gray4, '', '')
call s:HL('markdownUrl', s:purple, '', '')
call s:HL('markdownUrlTitleDelimiter', s:green, '', '')

" Ruby
call s:HL('rubyInterpolation', s:cyan, '', '')
call s:HL('rubyInterpolationDelimiter', s:indigo, '', '')
call s:HL('rubyRegexp', s:cyan, '', '')
call s:HL('rubyRegexpDelimiter', s:indigo, '', '')
call s:HL('rubyStringDelimiter', s:green, '', '')

" Sass
call s:HL('sassAmpersand', s:red, '', '')
call s:HL('sassClassChar', s:yellow, '', '')
call s:HL('sassMixinName', s:blue, '', '')
call s:HL('sassVariable', s:purple, '', '')

" TeX
call s:HL('texBeginEndName', s:blue, '', '')
call s:HL('texMathMatcher', s:blue, '', '')
call s:HL('texCite', s:green, '', '')
call s:HL('texRefZone', s:green, '', '')
call s:HL('texInputFile', s:green, '', '')
call s:HL('texMath', s:orange, '', '')
call s:HL('texMathOper', s:yellow, '', '')

" Vim-Fugitive
call s:HL('diffAdded', s:green, '', '')
call s:HL('diffRemoved', s:red, '', '')

" Vim-Gittgutter
call s:HL('GitGutterAdd', s:green, '', '')
call s:HL('GitGutterChange', s:yellow, '', '')
call s:HL('GitGutterChangeDelete', s:orange, '', '')
call s:HL('GitGutterDelete', s:red, '', '')

" Vim-Signify
hi link SignifySignAdd GitGutterAdd
hi link SignifySignChange GitGutterChange
hi link SignifySignDelete GitGutterDelete

" XML
call s:HL('xmlAttrib', s:purple, '', 'italic')
call s:HL('xmlEndTag', s:blue, '', '')
call s:HL('xmlTag', s:blue, '', '')
call s:HL('xmlTagName', s:blue, '', '')
