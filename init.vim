
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/bling/vim-bufferline.git'
Plug 'https://github.com/edkolev/tmuxline.vim'
Plug 'https://github.com/wesQ3/vim-windowswap.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/vim-python/python-syntax.git'

" Initialize plugin system
call plug#end()

"Anathoer plugin manager"
"dein Scripts-----------------------------
"if &compatible
 " set nocompatible               " Be iMproved
"endif        
"""
" Required:                                               
"set runtimepath+=/home/amund/.random/repos/github.com/Shougo/dein.vim
                      
" Required:
"if dein#load_state('/home/amund/.random')
  "call dein#begin('/home/amund/.random')  

  " Let dein manage dein
  " Required:
  "call dein#add('/home/amund/.random/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
 " call dein#add('Shougo/neosnippet.vim')
 " call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
"  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
"  call dein#end()
"  call dein#save_state()
"endif

" Required:
"filetype plugin indent on
"syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif
"End denin Scripts-------------------------------------

"call dein#add('Shougo/deoplete.nvim')
"call deoplete#enable()

"autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
"autocmd CompleteDone * pclose " To close preview window of deoplete automagically

"Providing neovim with pytohn path"  
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'



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

"Search tweaks"
set incsearch 		"Highlights while searching"
set hlsearch		"Higlight matches"

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

