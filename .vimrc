set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'


Plugin 'jiangmiao/auto-pairs'
Plugin 'tomtom/tcomment_vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tpope/vim-endwise'
Plugin 'joker1007/vim-ruby-heredoc-syntax'
Plugin 'kien/ctrlp.vim'


call vundle#end()
filetype plugin indent on

syntax enable
set number
set showcmd
set cursorline

set showmatch " highlight matching brackets, parenthesis, and so on
set incsearch " search as characters are entered
set hlsearch " highlight matches

set tabstop=2
set softtabstop=2
set expandtab

" let escape delete characters and whatnot
set backspace=indent,eol,start

" move vertically by visual line
nnoremap j gj
nnoremap k gk
" these two allow us to move around lines visually, not skipping a linewrapped
" "fake line"

" allows cursor change in tmux mode
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif


" Ignore certain folders for the kien/ctrpl.vim plugin
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
