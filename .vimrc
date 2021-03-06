" NeoBundle
set nocompatible               " Be iMproved

if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'Shougo/neocomplete'
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  " return neocomplete#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction



" NeoBundle 'git://github.com/astashov/vim-ruby-debugger.git'
" NeoBundle 'git://github.com/hallison/vim-rdoc.git'
" NeoBundle 'git://github.com/msanders/snipmate.vim.git'
" NeoBundle 'git://github.com/scrooloose/nerdtree.git'
" NeoBundle 'git://github.com/timcharper/textile.vim.git'
" NeoBundle 'git://github.com/tpope/vim-cucumber.git'
" NeoBundle 'git://github.com/tpope/vim-haml.git'
" NeoBundle 'git://github.com/tpope/vim-rails.git'
" NeoBundle 'git://github.com/tsaleh/taskpaper.vim.git'
" NeoBundle 'git://github.com/tsaleh/vim-tcomment.git'
" NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'
" NeoBundle 'git://github.com/ervandew/supertab.git'
"NeoBundle 'git://github.com/kana/vim-smartinput.git'
NeoBundle 'git://github.com/godlygeek/tabular.git'
NeoBundle 'git://github.com/tpope/vim-fugitive.git'
NeoBundle 'git://github.com/tpope/vim-git.git'
NeoBundle 'git://github.com/tpope/vim-markdown.git'
"NeoBundle 'git://github.com/tpope/vim-repeat.git'
"NeoBundle 'git://github.com/tpope/vim-surround.git'
"NeoBundle 'git://github.com/tpope/vim-vividchalk.git'
"NeoBundle 'git://github.com/tsaleh/vim-matchit.git'
"NeoBundle 'git://github.com/tsaleh/vim-shoulda.git'
"NeoBundle 'git://github.com/tsaleh/vim-tmux.git'
"NeoBundle 'git://github.com/vim-scripts/Gist.vim.git'
" NeoBundle 'git://github.com/kchmck/vim-coffee-script.git'
" XXX: I really want this!!!!
" NeoBundle 'git://github.com/Lokaltog/powerline.git'
"NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'git://github.com/scrooloose/nerdcommenter.git'

" For syntastic
NeoBundle 'git://github.com/scrooloose/syntastic.git'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 1
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': ['python'],
                           \ 'passive_filetypes': ['scala', 'html', 'java'] }
let g:syntastic_enable_signs=1
let g:syntastic_python_checker_args="--ignore=E501 --max-complexity=12"
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'

NeoBundle 'git://github.com/altercation/vim-colors-solarized'
NeoBundle 'git://github.com/majutsushi/tagbar'

" indent guide
NeoBundle 'git://github.com/nathanaelkane/vim-indent-guides.git'
let g:indent_guides_auto_colors = 0
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_color_change_percent=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgrey
function! s:indent_set_console_colors()
    hi IndentGuidesOdd ctermbg=235
    hi IndentGuidesEven ctermbg=236
endfunction
autocmd VimEnter,Colorscheme * call s:indent_set_console_colors()

NeoBundleLazy 'git://github.com/derekwyatt/vim-scala.git', {'autoload':{'filetypes':['scala']}}
NeoBundleLazy 'groenewege/vim-less', {'autoload':{'filetypes':['less']}}
NeoBundleLazy 'git://github.com/pangloss/vim-javascript.git', {'autoload':{'filetypes':['js', 'js.erb']}}
NeoBundleLazy 'ap/vim-css-color', {'autoload':{'filetypes':['css','scss','sass','less','styl']}}
NeoBundleLazy 'othree/html5.vim', {'autoload':{'filetypes':['html']}}
"NeoBundleLazy 'klen/python-mode', {'autoload':{'filetypes':['python']}}
"let g:pymode_rope=0
"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
"let g:pymode_lint_onfly = 1
"let g:pymode_folding = 0


filetype plugin indent on     " Required!

" Installation check.
NeoBundleCheck

set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
set grepformat=%f:%l:%c:%m


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



" persistent undo
silent execute '!mkdir -p ~/.vim/.cache/undo'
silent execute '!mkdir -p ~/.vim/.cache/backup'
silent execute '!mkdir -p ~/.vim/.cache/swap'

set undofile
set undodir=~/.vim/.cache/undo

" backups
set backup
set backupdir=~/.vim/.cache/backup

" swap files
set directory=~/.vim/.cache/swap
set noswapfile


set laststatus=2 nocp rtp+=~/.vim/bundle/vim-powerline

let mapleader = ","
let maplocalleader = ","



" like ctrl-p
nnoremap <C-p> :Unite file_rec/async<cr>
" todo: make this ack?
nnoremap <leader>a :Unite grep:.<cr>
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :Unite history/yank<cr>

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
"nnoremap / /\v
"vnoremap / /\v
"nnoremap ? ?\v
"vnoremap ? ?\v
"cnoremap s/ s/\v
set ignorecase
set smartcase

set incsearch
set showmatch
set hlsearch


" :noh using ", "
nnoremap <leader><space> :noh<cr>

nmap <leader>t :TagbarToggle<CR>


set t_Co=256

" Shorten timeout
" set noesckeys  " breaks arrow keys in insert mode
set nottimeout 
" set ttimeoutlen=250
set ttimeoutlen=1

"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
"
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
    "au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 


" Stuff from Dan
" ack
"vmap <localleader>a y:exec '!ack -w "'.getreg('"').'"'
"vmap <localleader>A y:exec '!ack "'.getreg('"').'"'
"nmap <localleader>a viw<localleader>a
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


" set paste
set autoindent


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
   "set nowrap
endif

" has to be near the bottom for some reason :/
" set nocompatible
