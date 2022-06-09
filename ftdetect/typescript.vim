" use `set filetype` to override default filetype=xml for *.ts files
autocmd BufNewFile,BufRead *.ts  set filetype=typescript
" use `setfiletype` to not override any other plugins like ianks/vim-tsx
autocmd BufNewFile,BufRead *.tsx setfiletype typescript

https://devblogs.microsoft.com/typescript/announcing-typescript-4-7/#new-file-extensions
autocmd BufNewFile,BufRead *.cts  set filetype=typescript
autocmd BufNewFile,BufRead *.mts setfiletype typescript
autocmd BufNewFile,BufRead *.ctsx  set filetype=typescript
autocmd BufNewFile,BufRead *.mtsx setfiletype typescript
