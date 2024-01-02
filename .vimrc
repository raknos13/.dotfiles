set number                      " Show line numbers
set relativenumber
:syntax on
" set cursorline
" set cursorcolumn
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set noshowmode                  " We show the mode with airline or lightline
set ignorecase
set mouse=a
" Apply the indentation of the current line to the next line.
set autoindent
set smartindent
set complete-=i
set showmatch
set smarttab

set tabstop=4
set shiftwidth=4
set expandtab

colorscheme gruvbox
set background=dark    " Setting dark mode
let g:gruvbox_contrast_dark = 'soft'

:let g:colorizer_auto_filetype='css,html'

" vim-plug automatic installation script
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" Make sure you use single quotes
Plug 'https://github.com/preservim/nerdtree.git', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/chrisbra/Colorizer.git'
" Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'https://github.com/ervandew/supertab.git'
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
