Typescript Syntax for Vim
=========================

Syntax file and compiler settings for [TypeScript](http://typescriptlang.org). The syntax file is taken
from this [blog post](http://blogs.msdn.com/b/interoperability/archive/2012/10/01/sublime-text-vi-emacs-typescript-enabled.aspx).

Install
-------

The simplest way to install is via a Vim add-in manager such as [Plug](https://github.com/junegunn/vim-plug), [Vundle](https://github.com/gmarik/vundle) 
or [Pathogen](https://github.com/tpope/vim-pathogen/).

If you want to install manually then you need to copy the files from this repository into your vim path,
see the vim docs for [:help runtimepath](http://vimdoc.sourceforge.net/htmldoc/options.html#'runtimepath')
for more information. This might be as simple as copying the files and directories to `~/.vim/` but it 
depends on your Vim install and operating system.

Indenting
---------

This plugin used to include some indent settings but they were not very good. There are better options around such as [vim-js-indent](https://github.com/jason0x43/vim-js-indent) that you should install as well.

Usage
-----

Once the files are installed the syntax highlighting and compiler settings will be automatically enabled anytime you 
edit a `.ts` file.

Compiler settings
-----------------

The compiler settings enable you to call the `tsc` compiler directly from Vim and display any errors or warnings
in Vim's QuickFix window. 

To run the compiler, enter `:make`, this will run `tsc` against the last saved version of your currently edited file.

You can add compiler options by modifying the compiler options variable.

```vim
let g:typescript_compiler_options = '-sourcemap'
```

Note, you can use something like this in your `.vimrc` to make the QuickFix window automatically appear
if `:make` has any errors.

```vim
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
```

![Obligatory screenshot](https://raw.github.com/leafgarland/typescript-vim/master/vimshot01.png)
