filetype plugin indent on
 
syntax on
set number
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
