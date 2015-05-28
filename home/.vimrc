" ___                 ____   ____ 
"|_ _|_ __ ___  _ __ |  _ \ / ___|
" | || '__/ _ \| '_ \| |_) | |    
" | || | | (_) | | | |  _ <| |___ 
"|___|_|  \___/|_| |_|_| \_\\____|

"vimRC made by Ironkins

"Key Bindings
set tabpagemax=20
map <F7> :tabp <CR>
map <F8> :tabn <CR>
set pastetoggle=<F2>

"Vundle plugin Stuff. run :PluginInstall to update installed plugins.
filetype off  
set rtp+=~/.vim/bundle/Vundle.vim   "Vundle Package Manager!
call vundle#begin()         
Plugin 'gmarik/Vundle.vim'          "let Vundle manage Vundle, required
Plugin 'fatih/vim-go'
call vundle#end()


"Filetype commands. Mostly temporary/obsolete.
filetype plugin indent on
au BufRead,BufNewFile *.m set filetype=asm
au BufRead,BufNewFile *.s set filetype=armasm
au BufRead,BufNewFile *.x set filetype=haskell
au BufRead,BufNewFile *.y set filetype=haskell

"Basic settings
syntax on                       "Syntax Highlighting
set nocompatible                "No need for vi compatibility
set mouse=a                     "Mouse control
set showmatch                   "Highlights matching brackets
set number                      "Enables line numbering
set virtualedit=onemore         "So we can insert past the end of the line.
set undolevels=1000             "Number of undo levels
set backspace=indent,eol,start  "Modern backspace behaviour

"Tabbing Settings
set smarttab                    "Improves tabbing
set tabstop=4                   "How much space Vim gives to a tab
set shiftwidth=4                "Indent size when using cindent and >> and stuff.
set expandtab                   "Makes all tabs into spaces.
set autoindent                  "If you're indented, new lines will also be indented
set smartindent                 "Indents lines after opening brackets.

"Aesthetics
colorscheme slate
set background=dark
set showbreak=+++               "Put in linebreaks.
set scrolloff=3                 "Show 3 lines above/below when scrolling

"Find/Replace Tweaks
set hlsearch                    "Highlight search results
set smartcase                   "Ignore case except when we have upper case chars
set ignorecase                  "Used in conjunction with the above
set incsearch                   "Start searching before hitting enter.

"Store backups and swap files elsewhere
set backupdir=~/.vim/backup/
set directory=~/.vim/swp/

""""""""""""
" Mappings
""""""""""""

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
set wmh=0

"Navigation in insert mode.
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

"Backslash is my leader.
let mapleader = "\\"

"Fast saving
nmap <leader>w :w!<cr>
