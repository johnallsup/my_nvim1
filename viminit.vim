let g:python_recommended_style = 0
syntax on
set nohlsearch
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set shiftround
set relativenumber
set cmdheight=2


inoremap jkl <esc>
inoremap JKL <esc>
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


" Vimscript file settings --------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" ARSEHOLE -- disable cursor keys

" force you to learn hjkl
" inoremap <esc> <nop>
inoremap <c-c> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

