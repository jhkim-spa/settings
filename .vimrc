set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'sainnhe/sonokai'
Plugin 'frazrepo/vim-rainbow'
Plugin 'morhetz/gruvbox'
Plugin 'zxqfl/tabnine-vim'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'majutsushi/tagbar'
Plugin 'szw/vim-maximizer'
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'tomasr/molokai'
Plugin 'nanotech/jellybeans.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

colorscheme jellybeans
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" highligh current line
set cursorline
" resize window size
" resize current buffer by +/- 5 
nnoremap < :vertical resize -3<cr>
nnoremap + :resize +3<cr>
nnoremap - :resize -3<cr>
nnoremap > :vertical resize +3<cr>
inoremap jk <Esc>
let mapleader = " "
set noerrorbells
set encoding=utf-8
set nu
set hlsearch
set incsearch
set ignorecase
set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set colorcolumn=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
let python_highlight_all=1
syntax on


" YouCompleteMe
"let g:ycm_python_binary_path = '/home/jihoo/miniconda3/envs/pytorch/bin/python3'
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g :YcmCompleter GoTo<CR>
" SimpylFold
let g:SimpylFold_docstring_preview=1
" Nerdtree
nnoremap <leader>rc :rightbelow vnew $MYVIMRC<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <C-F> :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction
autocmd VimEnter * call StartUp()
" Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
" RainbowBracket
let g:rainbow_active=0
" vim-latex-live
au Filetype tex setl updatetime=1
" tagbar
map <F12> :TagbarToggle<CR>
let g:tagbar_width=40
" Maximizer
nnoremap <leader>m :MaximizerToggle<CR>
