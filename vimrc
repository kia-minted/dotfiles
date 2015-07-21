set nocompatible              " be iMproved, required
filetype on                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Vim-GitGutter
Plugin 'airblade/vim-gitgutter'

" Pretty Vim Python
Plugin 'sentientmachine/Pretty-Vim-Python'

" Nerd Tree Plugin
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

" Mako Template Highlighting
Plugin 'vim-scripts/mako.vim'

" Dash Plugin
Plugin 'rizzatti/dash.vim'

"Vim Javascript
Plugin 'pangloss/vim-javascript'

"Vim Jsx
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

"Vim JSON
Plugin 'elzr/vim-json'
au BufRead,BufNewFile *.json set filetype=json

" Vim Instant Markdown
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
let g:instant_markdown_autostart = 0

"Color Scheme
Plugin 'chriskempson/base16-vim'

" Syntastic
Plugin 'scrooloose/syntastic'

" Airline
Plugin 'bling/vim-airline'

" Vim Auto Complete
Plugin 'Valloric/YouCompleteMe'

" Vim Emmet
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_json_checkers =['jsonlint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

highlight Comment cterm=bold
set background=dark
colorscheme base16-default
" Enable syntax highlighting
syntax enable

"set fonts
set guifont=Monaco:h12
" VIM SETTING FROM http://amix.dk/vim/vimrc.html
"
" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

"Show line numbers
set number

"Set tabs to spaces 
set expandtab


"Set vspit to be right
set splitright

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

"Searching starts after you enter the string
set incsearch

"cindent options is better than Vim auto indent
set cindent
" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" 80 Character Ruler
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" from https://tylercipriani.com/vim.html
" DISABLE ARROW KEYS
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>


""""""""""""""""""""""""""""""
" => Visual mode related
" """"""""""""""""""""""""""""""
" " Visual mode pressing * or # searches for the current selection
" " Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"  map <space> /
"  map <c-space> ?

"Alternative tab navigation
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
