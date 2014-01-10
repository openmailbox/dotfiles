execute pathogen#infect()
filetype plugin indent on

" Cosmetics; YMMV.
syntax enable
set background=dark
set t_Co=256
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized 
set nocompatible
call togglebg#map("<F5>") 
let g:airline_powerline_fonts=1
let g:airline_theme='laederon'
let g:ycm_extra_conf_globlist = ['~/*']

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

function MoveToPrevTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() != 1
    close!
    if l:tab_nr == tabpagenr('$')
      tabprev
    endif
    vert topleft split
  else
    close!
    exe "0tabnew"
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

function MoveToNextTab()
  "there is only one window
  if tabpagenr('$') == 1 && winnr('$') == 1
    return
  endif
  "preparing new window
  let l:tab_nr = tabpagenr('$')
  let l:cur_buf = bufnr('%')
  if tabpagenr() < tab_nr
    close!
    if l:tab_nr == tabpagenr('$')
      tabnext
    endif
    vert topleft split
  else
    close!
    tabnew
  endif
  "opening current buffer in new window
  exe "b".l:cur_buf
endfunc

nnoremap <c-w>. :call MoveToNextTab()<CR>
nnoremap <c-w>, :call MoveToPrevTab()<CR>
