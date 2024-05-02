" Vim syntax file
" Language: hxpipe output
" Maintainer: [Your Name or Alias]
" Last Change: [Today's Date]

if exists("b:current_syntax")
  finish
endif

" Define syntax groups
syntax match hxComment "^*.*$"
syntax match hxProcInstr "^?.*$"
syntax match hxDoctype "^!.*$"
syntax match hxStartTag "^(.*$"
syntax match hxEndTag "^).*$"
syntax match hxEmptyElement "^|.\+$"
syntax match hxAttrName "^A[^ \t]\+"
syntax match hxText "^-.*$"
syntax match hxLineNumber "^L[0-9]*$"

" Link highlight groups to default groups
highlight link hxComment Comment
highlight link hxProcInstr PreProc
highlight link hxDoctype Type
highlight link hxStartTag Statement
highlight link hxEndTag Identifier
highlight link hxEmptyElement Special
highlight link hxAttrName Type
highlight link hxText String
highlight link hxLineNumber Number

let b:current_syntax = "hxpipe"

