let g:python_recommended_style = 0
syntax on
set nohlsearch
set expandtab
set shiftwidth=2
set tabstop=2
let @a = 'yyp:s/./=/g'
let @c = '@a/^\D'
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set cursorline
set shiftround
autocmd FileType html :source ~/.vim/html.vim
set relativenumber
set cmdheight=2

inoremap jk <esc>
inoremap JK <esc>
source ~/.vim/arsehole.vim

nnoremap wr :set wrap<cr>
nnoremap nw :set nowrap<cr>

" copy and paste
vnoremap <leader>pc :w<home>silent <end> !pc<cr>
nnoremap <leader>pp :r! pp<cr>
nnoremap <leader>pcf :silent :w !pc %<cr>

" get and put
vnoremap <leader>pu :w<home>silent <end> !put
nnoremap ge :r!<space>get<space>
nnoremap sls :!storels<cr>


