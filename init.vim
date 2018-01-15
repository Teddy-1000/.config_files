
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"UI tweaks
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/bling/vim-bufferline.git'
Plug 'https://github.com/edkolev/tmuxline.vim'
Plug 'https://github.com/wesQ3/vim-windowswap.git'

"Editor packages
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'zchee/deoplete-jedi'
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/haya14busa/incsearch.vim.git'
"Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'https://github.com/scrooloose/nerdcommenter.git'

"Latex packages
Plug 'https://github.com/donRaphaco/neotex.git'
Plug 'lervag/vimtex'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


" Initialize plugin system
call plug#end()

let g:deoplete#enable_at_startup = 1

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

"
set clipboard=unnamed,unnamedplus
colorscheme badwolf 	"Set colorscheme"

syntax enable 		"Enable syntax processing"
syntax on

set tabstop=4		"Number of spaces show for tab"
set softtabstop=4	"Number of spaces in tab"

set expandtab		"Tabs are spaces"

set termguicolors

"UI tweaks"
set number	    	"Show linenumbers"
set cursorline		"Higlight cursot line"
filetype indent on	"Allows for loading indent files for spesific files"
set wildmenu		"Show menu for autocomlete in commandline"
set showmatch		"Highligths matching brackets"
let g:python_highlight_all = 1
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Search tweaks"
set incsearch 		"Highlights while searching"
set hlsearch 		"Higlight matches"
set magic
set inccommand=nosplit
set incsearch
set gdefault
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)


set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

