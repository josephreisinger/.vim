" Vim color file
" Name: devbox-dark-256
" Author: Dee Sub Wun

set background=dark
set t_Co=256
let g:colors_name="joe"

let python_highlight_all = 1
let c_gnu = 1


" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html


""""""
" SYNTAX HIGHLIGHTING
""""""""""""""""""""""""
hi Constant         cterm=NONE         	    ctermfg=105         ctermbg=NONE
hi String           cterm=NONE              ctermfg=211         ctermbg=NONE
hi Character        cterm=NONE              ctermfg=211         ctermbg=NONE
hi Number           cterm=NONE              ctermfg=208         ctermbg=NONE
hi Boolean          cterm=NONE              ctermfg=208         ctermbg=NONE
hi Float            cterm=NONE              ctermfg=208         ctermbg=NONE
"hi Comment          cterm=NONE	            ctermfg=111          ctermbg=NONE
hi Comment          cterm=NONE	            ctermfg=48          ctermbg=NONE

hi Identifier       cterm=NONE              ctermfg=159          ctermbg=NONE
hi Function         cterm=NONE              ctermfg=159          ctermbg=NONE

" 159 is a nice blue
hi Statement        cterm=bold              ctermfg=105         ctermbg=NONE
hi Conditional      cterm=bold              ctermfg=105         ctermbg=NONE
hi Repeat           cterm=bold              ctermfg=105         ctermbg=NONE
hi Label            cterm=bold              ctermfg=105         ctermbg=NONE
hi Operator         cterm=NONE              ctermfg=105         ctermbg=NONE
hi Keyword          cterm=bold              ctermfg=105         ctermbg=NONE
"hi Operator         cterm=NONE              ctermfg=147         ctermbg=NONE
"hi Keyword          cterm=bold              ctermfg=147         ctermbg=NONE
"
hi Exception        cterm=NONE              ctermfg=203         ctermbg=NONE

hi PreProc          cterm=NONE              ctermfg=170         ctermbg=NONE
hi Include          cterm=NONE              ctermfg=170         ctermbg=NONE
hi Define           cterm=NONE              ctermfg=170         ctermbg=NONE
hi Macro            cterm=NONE              ctermfg=170         ctermbg=NONE
hi PreCondit        cterm=NONE              ctermfg=170         ctermbg=NONE

hi Type             cterm=NONE              ctermfg=159         ctermbg=NONE
hi StorageClass     cterm=NONE              ctermfg=159         ctermbg=NONE
hi Structure        cterm=NONE              ctermfg=110         ctermbg=NONE
hi Typedef          cterm=NONE              ctermfg=159         ctermbg=NONE

hi Special          cterm=NONE              ctermfg=197          ctermbg=NONE
hi SpecialChar      cterm=NONE              ctermfg=197          ctermbg=NONE
hi Tag              cterm=NONE              ctermfg=159         ctermbg=NONE
hi Delimiter        cterm=NONE              ctermfg=150          ctermbg=NONE
hi SpecialComment   cterm=NONE              ctermfg=150          ctermbg=NONE
hi Debug            cterm=NONE              ctermfg=150          ctermbg=NONE

hi xmlTagName       cterm=NONE			    ctermfg=159			ctermbg=NONE
hi xmlCdata         cterm=NONE			    ctermfg=246			ctermbg=NONE
hi xmlAttrib        cterm=NONE			    ctermfg=110			ctermbg=NONE
hi htmlTagName      cterm=NONE			    ctermfg=159			ctermbg=NONE
hi htmlArg          cterm=NONE			    ctermfg=110			ctermbg=NONE
hi htmlItalic		cterm=NONE				ctermfg=253		    ctermbg=NONE

hi Underlined       cterm=underline         ctermfg=110         ctermbg=NONE

hi Ignore           cterm=NONE              ctermfg=231          ctermbg=NONE

hi Error            cterm=bold              ctermfg=231          ctermbg=NONE

hi Todo             cterm=NONE              ctermfg=231          ctermbg=NONE


""""""
" INTERFACE
""""""""""""""""""""""""
hi Cursor           cterm=NONE              ctermfg=231       ctermbg=NONE
hi CursorLine       cterm=NONE			    ctermfg=NONE		ctermbg=NONE
hi CursorColumn     cterm=NONE			    ctermfg=NONE		ctermbg=NONE
hi Directory        cterm=NONE              ctermfg=149         ctermbg=NONE
hi ErrorMsg         cterm=bold              ctermfg=231          ctermbg=NONE
hi LineNr           cterm=NONE              ctermfg=245         ctermbg=NONE
hi MatchParen       cterm=bold              ctermfg=0           ctermbg=NONE
hi ModeMsg          cterm=NONE              ctermfg=231          ctermbg=60
hi MoreMsg          cterm=NONE              ctermfg=149         ctermbg=NONE
hi NonText          cterm=bold              ctermfg=239         ctermbg=NONE
hi Normal           cterm=NONE              ctermfg=253         ctermbg=NONE
hi Question         cterm=NONE              ctermfg=149         ctermbg=NONE
hi SpecialKey       cterm=NONE              ctermfg=149         ctermbg=NONE
hi Title            cterm=NONE              ctermfg=170         ctermbg=NONE
hi VertSplit        cterm=reverse           ctermfg=0	        ctermbg=NONE
hi WarningMsg       cterm=NONE              ctermfg=9           ctermbg=NONE
hi WildMenu         cterm=NONE              ctermfg=231          ctermbg=NONE


""""""
" TABS
""""""""""""""""""""""""
hi TabLine          cterm=bold,reverse      ctermfg=0	        ctermbg=NONE
hi TabLineFill      cterm=bold,reverse      ctermfg=0	        ctermbg=NONE
hi TabLineSel       cterm=bold,reverse      ctermfg=0	        ctermbg=NONE


""""""
" COMPLETION
""""""""""""""""""""""""
hi Pmenu            cterm=NONE              ctermfg=252 		ctermbg=NONE
hi PmenuSel         cterm=NONE              ctermfg=NONE	    ctermbg=NONE


""""""
" STATUS
""""""""""""""""""""""""
hi StatusLine       cterm=bold      		ctermfg=255         ctermbg=33
hi StatusLineNC     cterm=reverse 	   		ctermfg=238	        ctermbg=NONE


""""""
" DIFF
""""""""""""""""""""""""
hi DiffAdd          cterm=NONE              ctermfg=NONE        ctermbg=NONE
hi DiffChange       cterm=NONE              ctermfg=NONE        ctermbg=NONE
hi DiffDelete       cterm=bold              ctermfg=239         ctermbg=NONE
hi DiffText         cterm=bold              ctermfg=15         	ctermbg=NONE


""""""
" VISUAL
""""""""""""""""""""""""
hi Visual           cterm=NONE              ctermfg=NONE         	ctermbg=60
hi VisualNOS        cterm=NONE              ctermfg=NONE         	ctermbg=60
"hi Visual           cterm=NONE              ctermfg=15         	ctermbg=7
"hi VisualNOS        cterm=NONE              ctermfg=15         	ctermbg=7


""""""
" FOLDING
""""""""""""""""""""""""
hi Folded           cterm=NONE              ctermfg=244 		ctermbg=NONE
hi FoldColumn       cterm=NONE              ctermfg=15          ctermbg=NONE


""""""
" SEARCH
""""""""""""""""""""""""
hi IncSearch        cterm=underline              ctermfg=15          ctermbg=NONE
hi Search           cterm=underline              ctermfg=15          ctermbg=NONE


"vim: sw=4
