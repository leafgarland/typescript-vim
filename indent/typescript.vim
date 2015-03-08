" Vim indent file, taken from indent/java.vim
" Language:	    Typescript
" Maintainer:	None!  Wanna improve this?
" Last Change:	2015 Mar 07

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" Use javascript cindent options
setlocal cindent cinoptions& cinoptions+=j1,J1
setlocal indentkeys&

" Load typescript indent function
setlocal indentexpr=GetTypescriptIndent()

let b:undo_indent = "setl cin< cino< indentkeys< indentexpr<"

" Only define the function once
if exists("*GetTypescriptIndent")
    finish
endif

" Make sure we have vim capabilities
let s:keepcpo = &cpo
set cpo&vim

function GetTypescriptIndent()

    let cind = cindent(v:lnum);

    if getline(v:lnum) =~ '^\s*[{}]'
        return cind
    endif

    " The last non-empty line
    let prev = prevnonblank(v:lnum-1)

    " Check if the previous line consists of a single `<variable> : <type>;`
    " declaration (e.g. in interface definitions)
    if getline(prev) =~ '^\s*\w\+\s*:.\+;\s*$'
        return indent(prev)
    endif

    " For everything else, trust cindent:
    return cind

endfunction

" Restore compatibility mode
let &cpo = s:keepcpo
unlet s:keepcpo

" vim: et
