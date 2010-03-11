" got this from http://www.vex.net/~x/python_and_vim.html
"A four-space tab indent width is the prefered coding style for Python (and everything else!), although of course some disagree. This page generally assumes you want 4-space indents.
set tabstop=4
"This allows you to use the < and > keys from VIM's visual (marking) mode to block indent/unindent regions
set shiftwidth=4 
" Use the 'shiftwidth' setting for inserting <TAB>s instead of the tabstop setting, when at the beginning of a line. This may be redundant for most people, but some poeple like to keep their tabstop=8 for compatability when loading files, but setting shiftwidth=4 for nicer coding style.
set smarttab
"Insert spaces instead of <TAB> character when the <TAB> key is pressed. This is also the prefered method of Python coding, since Python is especially sensitive to problems with indenting which can occur when people load files in different editors with different tab settings, and also cutting and pasting between applications (ie email/news for example) can result in problems. It is safer and more portable to use spaces for indenting.
set expandtab 
"People like using real tab character instead of spaces because it makes it easier when pressing BACKSPACE or DELETE, since if the indent is using spaces it will take 4 keystrokes to delete the indent. Using this setting, however, makes VIM see multiple space characters as tabstops, and so <BS> does the right thing and will delete four spaces (assuming 4 is your setting).
set softtabstop=4 
"Very painful to live without this (especially with Python)! It means that when you press RETURN and a new line is created, the indent of the new line will match that of the previous line. 
set autoindent 
"    This means that after typing lines which start with any of the keywords in the list (ie. def, class, if, etc) the next line will automatically indent itself to the next level of indentation:
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,clas

" for common pylint complaint and to get to 80 column fast
" no working
:map! H 080|
