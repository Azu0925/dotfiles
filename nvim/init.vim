inoremap <silent> jj <ESC>

set number
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set encoding=utf-8
set noswapfile

"dein Scripts-----------------------------

if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = expand('~/.cache/dein')

" Required:
set runtimepath+=/home/azu/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
	" Required:
	call dein#begin('/home/azu/.cache/dein')

	let s:toml_dir = expand('~/.config/nvim')
	" Let dein manage dein
	" Required:
	call dein#add('/home/azu/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy':0})

	" Add or remove your plugins here like this:
	"call dein#add('Shougo/neosnippet.vim')
	"call dein#add('Shougo/neosnippet-snippets')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

syntax on
colorscheme onedark
