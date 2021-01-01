" ~/.dotfiles/vimrc \
"	-> ~/.config/nvim/init.vim \
"	-> ~/.vimrc

" Plugins
" =================================
"
set nocompatible
filetype off
" This is necessary to get vundle working and allow it to manage plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, this should go before any other plugin
Plugin 'VundleVim/Vundle.vim' "https://github.com/VundleVim/Vundle.vim
 
" Plugins go down here
" Keep Plugin commands between vundle#begin/end.
Plugin 'preservim/nerdtree' "https://github.com/preservim/nerdtree
Plugin 'mattn/emmet-vim' "https://github.com/mattn/emmet-vim
"Plugin 'shaeinst/lazy-builder' "https://github.com/shaeinst/lazy-builder
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
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

" Encoding
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

"Ignore case
set ignorecase

    

"Syntax
syntax on

"List for compleion (Ctrl+n)
set wildmode=longest,list,full

" Background dark/light
" set background=light

" Colorscheme. Can be => default, blue, darkblue, delek, desert, elford, evening, industry, koehler, morning, murphy, pablo, peachpuff, ron, shine, slate, torte, zellner
colorscheme peachpuff

" Line in the cursor
set cursorline

" View button clicked
set showcmd

" See some info in the bottom right
set ruler

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

"Remaps -> https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
" When press S replace text
nnoremap S :%s//g<Left><Left>
"
" Compile C/C++ source with F8
map <F8> :w <CR> :!gcc % -o %< && ./%< <CR>
"
" Run python code with F9
map <F9> :w <CR> :!python3 % <CR>

"NERDTree

"Autostart
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
"
" Start NERDTree and put the cursor back in the other window.
"auto"cmd VimEnter * NERDTree | wincmd p
"
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
"
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
"
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"Remaps
nnoremap <C-z> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"Icons
"Default
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"
"With font awesome (Evidently requires font awesome in the system)
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Emmet
" Remaps
let g:user_emmet_mode='n' "Complition will only work in normal mode 
let g:user_emmet_leader_key=',' "Instead of C+y+, is now ,+,
