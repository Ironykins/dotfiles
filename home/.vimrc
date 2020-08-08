" ___                 ____   ____
"|_ _|_ __ ___  _ __ |  _ \ / ___|
" | || '__/ _ \| '_ \| |_) | |
" | || | | (_) | | | |  _ <| |___
"|___|_|  \___/|_| |_|_| \_\\____|

"vimRC made by Ironkins

" Auto installing Vundle script. Stolen from:
" http://erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme) 
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set nocompatible                "No need for vi compatibility
filetype off
set rtp+=~/.vim/bundle/vundle   "Vundle Package Manager!
call vundle#begin()

"Vundle plugin Stuff. run :PluginInstall to update installed plugins.
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'godlygeek/tabular'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kien/ctrlp.vim'
Plugin 'aperezdc/vim-template'

if iCanHazVundle == 0
    echo "Installing Vundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

call vundle#end()

"Filetype commands. Mostly temporary/obsolete.
filetype plugin indent on
filetype plugin on

au FileType html setl sw=2 sts=2 et
au FileType javascript setl sw=2 sts=2 et
au FileType yaml setl sw=2 sts=2 et

set grepprg=grep\ -nH\ $*
let g:Tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'

"Basic settings
syntax on                       "Syntax Highlighting
set modelines=0                 "For security
set mouse=a                     "Mouse control
set showmatch                   "Highlights matching brackets
set number                      "Enables line numbering
set virtualedit=onemore         "So we can insert past the end of the line.
set undolevels=1000             "Number of undo levels
set backspace=indent,eol,start  "Modern backspace behaviour
set hidden                      "Lets us have edited buffers in the background.
set noerrorbells                "Don't beep at us.

"Tabbing Settings
set smarttab                    "Improves tabbing
set tabstop=4                   "How much space Vim gives to a tab
set shiftwidth=4                "Indent size when using cindent and >> and stuff.
set expandtab                   "Makes all tabs into spaces.
set autoindent                  "If you're indented, new lines will also be indented
set smartindent                 "Indents lines after opening brackets.

"Window Settings
set laststatus=2                "Always display the statusline in all windows

"Aesthetics
set t_Co=256                    "Always use 256 color terminal.
colorscheme slate
set background=dark
set showbreak=+++               "Put in linebreaks.
set scrolloff=3                 "Show 3 lines above/below when scrolling

"Find/Replace Tweaks
"set hlsearch                    "Highlight search results
set smartcase                   "Ignore case except when we have upper case chars
set ignorecase                  "Used in conjunction with the above
set incsearch                   "Start searching before hitting enter.

" Store backups and swap files elsewhere
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

" Config for Airline.
"let g:airline_theme='durant'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Config for ctrlp
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = 'node_modules'

""""""""""""
" Mappings
""""""""""""
set pastetoggle=<F2>

"Tabs  -- BAD! Don't use tabs like they are in other editors.
"map <F7> :tabp <CR>
"map <F8> :tabn <CR>

"Smart way to move between windows
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l
set wmh=0

"Ctrlp mapping
map <C-o> :CtrlPBuffer<cr>
map <leader>p :CtrlPClearAllCaches<cr>
map <leader>r :%s/\s\+$//<cr>

"Managing Buffers
map <C-h> :bprevious<cr>
map <C-l> :bnext<cr>
map <leader>q :bdelete<cr>
map <leader>Q :wincmd c<cr>

"Navigation in insert mode.
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

"Backslash is my leader.
let mapleader = "\\"

"Clear search with <leader><space>
nnoremap <leader><space> :noh<cr>
nnoremap <leader>0 :%s/\s\+$//<cr>

"Fast saving
nmap <leader>w :w!<cr>

"NERDTree
noremap <leader>f :NERDTreeToggle<cr>
"Close NERDTree if it's the only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

