call pathogen#infect()
filetype plugin indent on

" Cosmetics; YMMV.
syntax enable
set background=dark
colorscheme solarized 
set nocompatible
call togglebg#map("<F5>") 

" Command-line completion
set wildmenu

" Show partial commands in last line
set showcmd

" Allow backspace over indent, line break, & start of insert
set backspace=indent,eol,start

" Tabs
set shiftwidth=2
set expandtab
set tabstop=2

" Numbers on left
set number

" Confirm dialogue instead of failed commands
set confirm

" Visual bell instead of beeping
set visualbell

" Enable mouse
set mouse=a

" Preserve auto-indent for unrecognized files
set autoindent

" case insensitive search, except when using caps
set ignorecase
set smartcase

" don't make ~ files
set nobackup 

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" NERD Tree remap
nmap <silent> <c-n> :NERDTreeToggle<CR>

let g:Powerline_symbols = 'fancy'

let g:slime_target = "tmux"
