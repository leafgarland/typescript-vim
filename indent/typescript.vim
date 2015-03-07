" Vim indent file, taken from indent/javascript.vim
" Language:	Typescript
" Maintainer:	None!  Wanna improve this?
" Last Change:	2015 Mar 07

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" C indenting is not too bad.
setlocal cindent
setlocal cinoptions+=j1,J1

" empty indentexpr
set indentexpr=

let b:undo_indent = "setl cin<"
