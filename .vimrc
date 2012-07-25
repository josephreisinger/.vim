" Init pathogen
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set modelines=0

set encoding=utf-8
set scrolloff=3
set ttyfast
set hidden  " allow us to open other buffers without saving this one
set wildmenu
" Keeps the goddammned tab completion sane
set wildmode=list:longest
set cursorline
set ruler
set backspace=indent,eol,start
"set relativenumber
set undofile

set incsearch
set showmatch
set hlsearch

set laststatus=2 nocp rtp+=~/.vim/bundle/vim-powerline

"set colorcolumn=100

" learn vim dammit
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
"nnoremap j gj
"nnoremap k gk

" clever
nnoremap ; :

" oh, fuck yes. always save the fcuker
au FocusLost * :wa



" select pasted text
" nnoremap <leader>v V`]


" Fix vim's regexps
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase

let mapleader = ","

" :noh using ", "
nnoremap <leader><space> :noh<cr>

nmap <leader>t :TagbarToggle<CR>


set t_Co=256

set noesckeys
set ttimeout 
set ttimeoutlen=250

"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
"let g:solarized_termcolors=256
"colorscheme solarized
"set background=dark
colorscheme molokai
"colorscheme joe
"colorscheme leo
"

" Really helpful!
map ,, :w<cr>
map ,q :q<cr>

" Pep8
let g:pep8_map='<leader>8'

" Just in case you forget sudo
cmap w!! %!sudo tee > /dev/null %


" Ack
" let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" nmap <leader>a <Esc>:Ack!

" Restore the last line we were working on and also marks
set viminfo='10,\"100,:20,%,n~/.viminfo 
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 

let maplocalleader = ","

" Stuff from Dan
" ack
vmap <localleader>a y:exec '!ack -w "'.getreg('"').'"'
vmap <localleader>A y:exec '!ack "'.getreg('"').'"'
nmap <localleader>a viw<localleader>a
" FuzzyFinder
map <localleader>ff :FufCoverageFile<cr>
map <localleader>f. :FufFileWithCurrentBufferDir<cr>
map <localleader>fF :FufTaggedFile<cr>
map <localleader>ft :FufTag<cr>
map <localleader>fd :FufDirWithCurrentBufferDir<cr>
map <localleader>fh :FufHelp<cr>
map <localleader>fr :FufRenewCache<cr>

let g:fuf_patternSeparator = ';'
let g:fuf_keyOpenTabpage = '<cr>'
let g:fuf_keyOpen = '<c-e>'
let g:fuf_coveragefile_prompt = '> '
let g:fuf_file_prompt = '> '
let g:fuf_taggedfile_prompt = '> '
let g:fuf_tag_prompt = '> '
let g:fuf_dir_prompt = '> '
let g:fuf_help_prompt = '> '

map <localleader>v :tabe ~/.vimrc<cr>:set noro<cr><c-l>
map <localleader>V :so ~/.vimrc<cr>
map <localleader>p :set invpaste \| set paste?<cr>


" moves all the vim backups somewhere nice
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups//
set directory=~/.vim_backups//

" set paste
set autoindent

let mapleader = ","
let localmapleader = ","

" For syntastic
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python'],
                           \ 'passive_filetypes': ['scala'] }
let g:syntastic_enable_signs=1
let g:syntastic_python_checker_args="--ignore=E501 --max-complexity=12"

set errorformat=%f:%l:%v:%*\\d:%*\\d:%*\\s%m
set expandtab
set foldmethod=manual
set foldenable
set infercase
set nojoinspaces
set shiftwidth=4
set splitbelow
set splitright
set tabstop=4
set tildeop

set showcmd

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" clear highlight after search
noremap <silent><Leader>/ :nohls<CR>

syntax enable
syntax sync fromstart
filetype on            " try to detect filetypes
filetype plugin on     " enables filetype specific plugins
filetype plugin indent on


if &diff
   set nowrap
endif

" has to be near the bottom for some reason :/
set nocompatible
