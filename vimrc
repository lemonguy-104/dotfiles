"VimRC"


" Plugins
" =================================
"
set nocompatible
filetype off
" This is necessary to get vundle working and allow it to manage plugins
" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.config/nvim/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, this should go before any other plugin
Plugin 'VundleVim/Vundle.vim'

" Plugins go down here
" Keep Plugin commands between vundle#begin/end.
Plugin 'preservim/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Quick help
" :PluginList       - lists configured plugins
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" 
" =================================


"Encoding
set encoding=utf-8

"View numbers in the left
set number relativenumber

"Set tab size
set softtabstop=4

"Searching
    "Increment the search
    set incsearch

    "Hightlight the word search (and will also highlight all of them )
    set hlsearch

"Syntax
syntax on

"List for completation (Ctrl+n)
set wildmode=longest,list,full

" Backgrounf dark/light
" set background=light

" Colorscheme. Can be => default, blue, darkblue, delek, desert, elford, evening, industry, koehler, morning, murphy, pablo, peachpuff, ron, shine, slate, torte, zellner
colorscheme peachpuff

" Line in the cursor
set cursorline

" View button clicked
set showcmd

" See some info in the bottom right
set ruler


"NERDTree

"Autostart
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
" ===
" Start NERDTree and put the cursor back in the other window.
"auto"cmd VimEnter * NERDTree | wincmd p
" ===
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" ===
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror

"Remaps
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Icons
"Default
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"===
"With font awesome (Evidently requires font awesome in the system)
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
