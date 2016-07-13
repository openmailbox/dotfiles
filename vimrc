execute pathogen#infect()
filetype plugin indent on

" Cosmetics; YMMV.
syntax enable
set hlsearch
set laststatus=2
set background=dark
set t_Co=256
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized 
set nocompatible
call togglebg#map("<F5>") 
let g:airline_powerline_fonts=1
let g:airline_theme='laederon'
let g:ycm_global_ycm_extra_conf = '/home/brandon/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/*']
let g:ycm_collect_identifiers_from_tag_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_always_populate_location_list = 1

" Allow JSX highlighting in .js files for React
let g:jsx_ext_required = 0

" show trailing whitespace
match ErrorMsg '\s\+$'
" strip trailing whitespace
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" YCM mappings
nnoremap <leader>ycmgt :YcmCompleter GetType<CR>
nnoremap <leader>ycmgo :YcmCompleter GoTo<CR>

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
autocmd Filetype go setlocal ts=4 sts=4 sw=4

autocmd Filetype c,go setlocal ts=4 sts=4 sw=4
autocmd Filetype make setlocal noexpandtab ts=4 sw=4

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

" Folding
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
augroup END
set foldnestmax=10
set nofoldenable

" Tagbar
nmap <F8> :TagbarToggle<CR>
nmap <F9> :TagbarOpenAutoClose<CR>
let g:tagbar_left = 1
let g:tagbar_compact = 1
let g:tagbar_ctags_bin = "/usr/bin/ctags"
let g:tagbar_type_ruby = {'kinds' : ['m:modules', 'c:classes', 'd:describes', 's:states', 'C:contexts', 'f:methods', 'F:singleton methods'] }

" Zeal docs
nnoremap gz :!zeal --query "<cword>"&<CR><CR>

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
" :map <f9> :make<CR><CR><CR>:!a.out &<CR><CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us 
  "set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu 
com! WP call WordProcessorMode()

let g:zipPlugin_ext = '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docx,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'
