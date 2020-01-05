filetype plugin indent on

set encoding=utf-8
 
set paste
syntax on
set showmatch
set nowrap
set history=1000
set cursorline
if has("unnamedplus")
  set clipboard=unnamedplus
elseif has("clipboard")
  set clipboard=unnamed
endif

set expandtab
set shiftwidth=4

set background=dark
colorscheme desert

"""""""""""""""""""""""""""""""""
" Arrow keys are unacceptable
"""""""""""""""""""""""""""""""""
map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>


" Enable syntax highlighting for python codes
let python_highlight_all = 1
" Display line numbers in each line
set number
" Add 4 spaces for each tab
set ts=4
" It is used to control the number of tabs that will be used by vim when tab key will pressed
set softtabstop=4
"It is used to control the number of columns when left or right shift is pressed
set shiftwidth=8
"It is used for automatic text wrapping
set textwidth=79

"It is used for adding automatic indention in vim
set autoindent
"It is used to inform vim about the file format and how to read the file
set fileformat=unix

set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level
