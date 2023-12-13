:set nu
:syntax on
set tabstop=4
set expandtab
set softtabstop=4
set autoindent
set cursorline
"set cursorcolumn
DoMatchParen

" vim-plug automatic installation script
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'https://github.com/preservim/nerdtree.git', { 'on': 'NERDTreeToggle' }

Plug 'https://github.com/tpope/vim-commentary.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'https://github.com/tpope/vim-surround.git'

Plug 'https://github.com/chrisbra/Colorizer.git'

Plug 'https://github.com/ycm-core/YouCompleteMe.git'

Plug 'https://github.com/jiangmiao/auto-pairs.git'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
