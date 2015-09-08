if exists("current_compiler")
  finish
endif
let current_compiler = "typescript"

if !exists("g:typescript_compiler_binary")
  let g:typescript_compiler_binary = "tsc"
endif

if !exists("g:typescript_compiler_options")
  let g:typescript_compiler_options = ""
endif

if get(g:, 'typescript_compile_by_tsconfig')
  let &l:makeprg = g:typescript_compiler_binary
else
  let &l:makeprg = g:typescript_compiler_binary . ' ' . g:typescript_compiler_options . ' $*  %'
endif

CompilerSet errorformat=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
