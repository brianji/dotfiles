" Auto-install vim-plug.
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins.
call plug#begin()

Plug 'arcticicestudio/nord-vim'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-syntastic/syntastic'

call plug#end()

colorscheme nord
