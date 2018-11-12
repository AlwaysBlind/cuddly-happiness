set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'google/yapf', { 'rtp': 'plugins/vim' }

" colorscheme
Plugin 'sonjapeterson/1989.vim'

" colorscheme
Plugin 'brendonrapp/smyck-vim'
" All of your Plugins must be added before the following line
Plugin 'vim-syntastic/syntastic'

Plugin 'davidhalter/jedi-vim'

Plugin 'ervandew/supertab'

" enclose in
Plugin 'tpope/vim-surround'

" isort
Plugin 'fisadev/vim-isort'

Plugin 'ntpeters/vim-better-whitespace'

" ctrlp
Plugin 'kien/ctrlp.vim'

" Langserver
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" no arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

syntax on
set showmatch
set ts=4
set sts=4
set sw=4
set autoindent
set smartindent
set smarttab
set expandtab
set number
set clipboard=unnamedplus
colorscheme smyck
"
" JEDI STUFF auto-completion
let g:jedi#auto_initialization = 1

" dont show docstinrg
autocmd FileType python setlocal completeopt-=preview

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" remove scroll
:map <ScrollWheelUp> <C-Y>
:map <S-ScrollWheelUp> <C-U>
:map <ScrollWheelDown> <C-E>
:map <S-ScrollWheelDown> <C-D>


" enabble whitespace on save
let g:better_whitespace_enabled=1
let g:strip_whitelines_at_eof=1
let g:strip_whitespace_on_save=1


" ctrlp
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/]\.(git|hg|svn|html)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
	\ }
