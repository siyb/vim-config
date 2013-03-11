"color schemes I like ;)
"colorscheme darkburn
"colorscheme jellybeans
colorscheme zenburn
" enable syntax highlighting
syntax on

" show matching parenthesis
set showmatch

" show cursorline
set cursorline

" show cursorcolomn
set cursorcolumn

" show linenumbers
set nu

" spellcheck
"set spell
"set spelllang=en

" filetype recognition
filetype on

" highlight search results
set hlsearch

"
" Mappings
"

" Split mode mappings
nmap <S-Up> :wincmd k<CR>
nmap <S-Down> :wincmd j<CR>
nmap <S-Left> :wincmd h<CR>
nmap <S-Right> :wincmd l<CR>

"
" Indentation
"

" enable plugin based filetype indentation
filetype plugin indent on

" the size of a tab, default is 8. Only for tab key
set tabstop=8

" the size of a tab, default is 8. For > and <
set shiftwidth=8

" no line wrapping
set nowrap

" indentation & beautification based on filetype (JavaScript Related Stuff)
set suffixesadd=.js,.json,.jade,.coffee
autocmd BufRead,BufNewFile *.json set filetype=javascript
autocmd FileType javascript set iskeyword=@,48-57,-,192-255
autocmd FileType javascript setlocal ts=4 sts=4 sw=4 et
autocmd FileType javascript :setl omnifunc=jscomplete#CompleteJS

nmap ff :%!js-beautify -j -q -B -f -<CR>

" auto complete
imap <C-space> <C-n>

" syntax checking
call pathogen#infect()


" enable mouse in all mode
set ttymouse=urxvt
set mouse=a
