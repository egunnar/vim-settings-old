set tabstop=4
set shiftwidth=4

set incsearch
" has been messing up cutting and pasting with termial
"set mouse=a
set nocompatible
set nobackup
set showcmd
set hls
"This specifies where in Insert mode the <BS> is allowed to delete the
"character in front of the cursor.  The three items, separated by commas, tell
"Vim to delete the white space at the start of the line, a line break and the
"character before where Insert mode started.
set backspace=indent,eol,start
"This makes Vim use the indent of the previous line for a newly created line.
set autoindent
"Keep 1000 commands and 1000 search patterns in the history. (default is 20)
set history=1000
set ruler
set showmatch
set nospell
" Automatically save before commands like :next and :make
set autowrite
" Hide buffers when they are abandoned
set hidden
" load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
" enable syntax highlighting only when the terminal supports colors
if &t_Co > 1
   syntax enable
endif
" have Vim jump to the last position when
" reopening a file
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" makes sesssions so they can be worked on with windows and unix
set sessionoptions+=unix,slash

set wildmenu
" leader key is normally \ which sucks
let mapleader = ","
"The % key will switch between opening and closing brackets. By sourcing matchit.vim, it can also switch among e.g. if/elsif/else/end, between opening and closing XML tags, and more.
runtime macros/matchit.vim

" imst default for project plugin. g makes F12 toggle the project plugin
let g:proj_flags="imstg"    

"The “Press ENTER or type command to continue” prompt is jarring and usually unnecessary. You can shorten command-line text and other info tokens with, e.g.:
set shortmess=atI
"See :help shortmess for the breakdown of what this changes. You can also pare things down further if you like

" for alternative.vim. toggles between header/cpp file
map <Leader>a <esc>:A<cr> 

" for omnicppcomplete
map <C-F11> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" for cscope (ex finding calls of function)
map <C-F10> :!cscope -Rbq . <CR>

map <Leader>w <C-w><C-w>
" this stuff is for minibuffer.vim, if i don't like plugin, can erase
"let g:miniBufExplMapWindowNavVim = 1 
"let g:miniBufExplMapWindowNavArrows = 1 
"let g:miniBufExplMapCTabSwitchBufs = 1 
"let g:miniBufExplModSelTarget = 1
