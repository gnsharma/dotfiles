set nocompatible   " Disable vi-compatibility
set encoding=utf-8
set backspace=indent,eol,start

set incsearch
set ignorecase
set smartcase
set hlsearch

autocmd FileType typescript :set makeprg=tsc
autocmd BufRead,BufNewFile *.ts setlocal filetype=typescript

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

