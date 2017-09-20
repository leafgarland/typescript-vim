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

if exists(":CompilerSet") != 2
  command! -nargs=* CompilerSet setlocal <args>
endif

execute 'CompilerSet makeprg=' . escape(g:typescript_compiler_binary, ' ') . '\ ' . escape(g:typescript_compiler_options, ' ') . escape(' $* %', ' ')

CompilerSet errorformat=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
