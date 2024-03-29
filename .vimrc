set nocompatible
filetype off

" indentation
set expandtab tabstop=4 shiftwidth=4 softtabstop=4 smarttab
set autoindent

" search
set hlsearch!
set ignorecase
set smartcase

" behavior
set shell=/bin/bash\ -i
set autochdir
set mouse=a
if $TMUX == ''
    set clipboard+=unnamed
endif
set pastetoggle=<F10>
set backspace=2
set splitright
set splitbelow
set foldlevelstart=99
set tags=tags;/
set lazyredraw
set ttyfast
set autoread
set shellcmdflag=-ic
set ttimeoutlen=10

" display
set colorcolumn=80
set laststatus=2
set number
set ruler
set statusline+=%F
set showtabline=2
set cursorline
set cursorcolumn
set list

" maps
nnoremap <F3> :set hlsearch!<CR>
nnoremap <F4> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
:command Wqa wqa
:command Wq wq
:command W w
:command Q q

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'altercation/vim-colors-solarized'
Plugin 'haya14busa/vim-easyoperator-line'
Plugin 'haya14busa/vim-easyoperator-phrase'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'python-mode/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-sensible'
Plugin 'vim-latex/vim-latex'
call vundle#end()

" solarized
colorscheme solarized
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1

" latex
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='open $*.pdf'
set grepprg=grep\ -nH\ $*
imap ∫ <Plug>Tex_MathBF
imap ç <Plug>Tex_MathCal
imap ¬ <Plug>Tex_LeftRight
imap ˆ <Plug>Tex_InsertItemOnThisLine
cabbr <expr> %% expand('%:p:h')
" redef C-j to ∆
imap ∆ <Plug>IMAP_JumpForward
nmap ∆ <Plug>IMAP_JumpForward

" ctrlp
set rtp^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cmd = 'CtrlPMRU'

" python-mode
nnoremap <F7> :PymodeLintAuto<CR>
let g:pymode_rope = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_rope_lookup_project = 1
let g:pymode_python = 'python'

" pathogen
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
