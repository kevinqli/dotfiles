set nocompatible
filetype off
set shell=bash\ --login

set expandtab tabstop=4 shiftwidth=4 softtabstop=4 smarttab
set autoindent

set mouse=a
set clipboard=unnamed
set pastetoggle=<F10>
set backspace=2
set hlsearch!

set ruler
set number
set colorcolumn=80

nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'

syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

execute pathogen#infect()
filetype plugin indent on

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='open $*.pdf'
set grepprg=grep\ -nH\ $*
imap ∫ <Plug>Tex_MathBF
imap ç <Plug>Tex_MathCal
imap ¬ <Plug>Tex_LeftRight
imap ˆ <Plug>Tex_InsertItemOnThisLine
