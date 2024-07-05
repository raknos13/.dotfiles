" vim-plug automatic installation script
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Make sure you use single quotes
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-commentary'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-surround'
" Plug 'chrisbra/Colorizer'
" Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/jiangmiao/auto-pairs'
" Plug 'https://github.com/morhetz/gruvbox.git'
Plug 'ervandew/supertab'
Plug 'morhetz/gruvbox'
Plug 'ap/vim-css-color' 
Plug 'ianding1/leetcode.vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

call plug#end()
"vim-plug END---------------------------------------------------

" let g:colorizer_auto_filetype='css,html,javascript'
let g:leetcode_browser = 'chrome'

set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_contrast_light = 'medium'
let g:gruvbox_contrast_dark = 'medium'
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

set number                      " Show line numbers
set relativenumber
" :syntax on
:syntax enable
set cursorline
" set cursorcolumn
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set noshowmode                  " We show the mode with airline or lightline
set title
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
set ttimeoutlen=5  " to avoid airline slow escape

" Highlight search incrementally
:set incsearch
:set hlsearch
"This unsets the 'last search pattern' register by hitting return
" nnoremap <CR> :noh<CR><CR>
" :nnoremap <silent> <CR> :nohlsearch<CR><CR>
:nnoremap <silent><ESC> <ESC>:noh<CR><ESC>

" set clipboard=unnamedplus

" Set cursor to Beam in insert mode
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" let &t_SI = "\e[5 q"
" let &t_EI = "\e[1 q"

" autocmd InsertEntel * set cursorline
" autocmd InsertLeave * set nocursorline
:autocmd InsertEnter,InsertLeave * set cul!

" create undo points when
" typing these keys
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap ( (<c-g>u
inoremap [ [<c-g>u
inoremap { {<c-g>u
inoremap = =<c-g>u
inoremap \" \"<c-g>u
inoremap <Space> <Space><C-g>u
inoremap <CR> <CR><c-g>u
augroup split-undo-when-im-thinking
  au!
  au CursorHoldI * call feedkeys("\<c-g>u", 'n')
augroup END
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left> " replace


