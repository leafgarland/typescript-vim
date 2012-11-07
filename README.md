Typescript Syntax for Vim
=========================

Syntax file and compiler settings for [TypeScript](http://typescriptlang.org). The syntax file is taken
from this [blog post](http://blogs.msdn.com/b/interoperability/archive/2012/10/01/sublime-text-vi-emacs-typescript-enabled.aspx).

Compiler settings
-----------------

The compiler settings enable you to call the `tsc` compiler directly from Vim and display any errors or warnings
in Vim's QuickFix window. 

To run the compiler, enter `:make`, this will run `tsc` against the last saved version of your currently edited file.

Note, you can use something like this in your `.vimrc` to make the QuickFix window automatically appear
if `:make` has any errors.

```vim
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
```

![Obligatory screenshot](https://raw.github.com/leafgarland/typescript-vim/master/vimshot01.png)
