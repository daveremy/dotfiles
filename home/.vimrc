set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Add vundle plugins here 
Plugin 'Valloric/YouCompleteMe'
" All plugins must be added before the follwing line
call vundle#end()
filetype plugin indent on

execute pathogen#infect()
syntax on
set background=dark
colorscheme solarized
filetype plugin indent on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set wildmenu
set lazyredraw
set foldenable
set foldlevelstart=10

" set CTL= to format entire file
nmap <C-f> mzgg=G`z<CR>
"noremap <c-=> gg=G2<C-o>

" CTL-J and CTL-K to add lines and stay in command mode
nnoremap <C-J> m`o<Esc>``
nnoremap <C-K> m`O<Esc>``

"NERD Tree
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window left open is NERDTree"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open NERDTree automatically when VIM starts up if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Sideways  https://github.com/AndrewRadev/sideways.vim
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

"ctrlp.vim settings
set runtimepath^=~/.vim/bundle/ctrlp.vim

"insert single char and stay in normal mode
nnoremap s :exec "normal i".nr2char(getchar())."\e"<CR>
nnoremap S :exec "normal a".nr2char(getchar())."\e"<CR>
