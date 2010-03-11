"taken from http://www.vex.net/~x/python_and_vim.html
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
" no whitespace at end of line when saved
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

