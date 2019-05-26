" vim-pathogen for managing runtimepath
execute pathogen#infect()
syntax enable               " enable syntax highlighting
filetype plugin indent on   " load filetype-specific files 
set belloff=all             " turn off bell warnings
let g:loaded_matchparen=1   " remove ({[ match highlighting

colorscheme material 

set number		    " show line numbers
" tabs
set tabstop=4		" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set shiftwidth=4    " number of spaces for (auto)indent
" command
set showcmd		    " show command in bottom bar
set wildmenu		" visual autocomplete for command menu
" search
set incsearch		" search as characters are entered
set hlsearch		" highlight matches
" turn off search highlight with '\space'
nnoremap <leader><space> :nohlsearch<CR> 

if (has("termguicolors"))
    set termguicolors " add terminal colors
endif
