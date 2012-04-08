set t_Co=256

set noesckeys
set ttimeout 
set ttimeoutlen=250

"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
colorscheme joe
"colorscheme leo
"
" Keeps the goddammned tab completion sane
set wildmode=longest,list

" Really helpful!
map ,, :w<cr>
map ,q :q<cr>

" Init pathogen
call pathogen#infect() 
" filetype off
" call pathogen#runtime_append_all_bundles()
" call pathogen#helptags()

" Pep8
let g:pep8_map='<leader>8'

" Just in case you forget sudo
cmap w!! %!sudo tee > /dev/null %


" Ack
" let g:ackprg="ack-grep -H --nocolor --nogroup --column"
" nmap <leader>a <Esc>:Ack!


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


" highlight StatusLineModified           term=bold,reverse cterm=bold,reverse ctermfg=15
"highlight StatusLineModified           term=reverse,bold cterm=NONE ctermfg=255 ctermbg=197 
"highlight StatusLineModifiedNC           term=reverse,bold cterm=NONE ctermfg=255 ctermbg=197
"highlight StatusLinePreview            term=bold,reverse cterm=bold,reverse ctermfg=Blue   
"highlight StatusLinePreviewNC          term=reverse      cterm=reverse      ctermfg=Blue    
"highlight StatusLineReadonly           term=bold,reverse cterm=bold,reverse ctermfg=Grey    
"highlight StatusLineReadonlyNC         term=reverse      cterm=reverse      ctermfg=Grey    
"highlight StatusLineSpecial            term=bold,reverse cterm=bold,reverse ctermfg=DarkBlue
"highlight StatusLineSpecialNC          term=reverse      cterm=reverse      ctermfg=DarkBlue
"highlight StatusLineUnmodifiable       term=bold,reverse cterm=bold,reverse ctermfg=Grey    
"highlight StatusLineUnmodifiableNC     term=reverse      cterm=reverse      ctermfg=Grey   

set laststatus=2


" moves all the vim backups somewhere nice
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups//
set directory=~/.vim_backups//

" dont remember what this does
"set viminfo='10,\"100,:20,%,n~/.viminfo 
    "au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif 

" set paste
set autoindent

let mapleader = ","
let localmapleader = ","
 
set backspace=indent,eol,start

set nocompatible
set errorformat=%f:%l:%v:%*\\d:%*\\d:%*\\s%m
set expandtab
set foldmethod=manual
set foldenable
"set formatoptions=cnroq
"set guifont=Courier_New:h8
"set guioptions=ar
set incsearch
set hlsearch
set infercase
set nojoinspaces
"set printfont=Courier_New:h8
"set printoptions=left:2pc,right:3pc,top:3pc,bottom:3pc,header:3,syntax:a,number:y
set ruler
set shiftwidth=4
set showmatch
set splitbelow
set splitright
set tabstop=4
"set textwidth=80
set tildeop


set showcmd


"autocmd BufRead,BufNewFile * highlight Folded guibg=#303030 guifg=lightgray
"set foldtext=MyFoldText()
"function MyFoldText()
"   let line = substitute(getline(v:foldstart), '/\*\|\*/\|{{{\d\=', '', 'g')
"   return line . " (" . (v:foldend - v:foldstart) . " lines)"
"endfunction

"autocmd BufRead,BufNewFile * highlight Visual guifg=darkgray

syntax enable
syntax sync fromstart
filetype on                          " try to detect filetypes
filetype plugin indent on

let g:explVertical=1
let g:explStartRight=1
let g:explSplitRight=1
let g:explWinSize=""

" Taglist Window Options
let Tlist_Use_Right_Window=1
let Tlist_Sort_Type = "name"

if &diff
   set nowrap
endif

"NERDTree
map <leader>n :NERDTreeToggle<CR>


" emulate the output of :args in expression form (By DanB)
"function BufferList ()
"
"  let i = 0
"  let out = ''
"
"  while i < argc()
"
"    let current = argv( i )
"
"    " bracket the current buffer name
"    if i == argidx()
"      let current = '[' . current . ']'
"    endif
"
"    " space-separate buffer names
"    if i > 0
"      let out = out . ' '
"    endif
"    let out = out . current
"
"    let i = i + 1
"
"  endwhile
"
"  return out
"
"endfunction