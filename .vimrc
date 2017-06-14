set nocompatible
filetype off
set shell=bash\ --login
set runtimepath^=~/.vim/bundle/ctrlp.vim
set autochdir

set expandtab tabstop=4 shiftwidth=4 softtabstop=4 smarttab
set autoindent
set foldmethod=indent
set foldnestmax=2

set hlsearch!
set ignorecase
set smartcase

set mouse=a
set clipboard=unnamed
set pastetoggle=<F10>
set backspace=2
set splitright
set splitbelow
set tags=tags;/

set ruler
set number
set colorcolumn=80
set laststatus=2
set statusline+=%F
set showtabline=2

nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'

syntax enable
colorscheme solarized
set background=dark
let g:solarized_termcolors=256

execute pathogen#infect()
filetype plugin indent on

let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='open $*.pdf'
set grepprg=grep\ -nH\ $*
imap <C-Q> <Plug>IMAP_JumpForward
nmap <C-Q> <Plug>IMAP_JumpForward
imap ∫ <Plug>Tex_MathBF
imap ç <Plug>Tex_MathCal
imap ¬ <Plug>Tex_LeftRight
imap ˆ <Plug>Tex_InsertItemOnThisLine
cabbr <expr> %% expand('%:p:h')

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_dont_split = 'NERD'

nmap <Leader>f :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
