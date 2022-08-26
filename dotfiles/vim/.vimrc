"general settings
set nu
set mouse=a
set syntax=on
filetype plugin indent on

"tab settings
set tabstop=4
set shiftwidth=4
set expandtab

"auto complete settings
set completeopt=menuone,longest
set shortmess+=c

"theme settings
"let g:airline_theme='nord'
set background=dark
let g:airline_powerline_fonts=1
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italics=1

"toggle auto commenting
set formatoptions-=cro

"security settings
set nomodeline

"write errors to bottom bar
let g:pymode_lint_cwindow=0

"toggle indent line
autocmd Filetype yaml set cursorcolumn
autocmd Filetype yml set cursorcolumn
autocmd Filetype python set cursorcolumn

"enable smart search
set ignorecase
set smartcase

"begin search as chars are typed
set incsearch

"set plugins
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoComplPop'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'https://github.com/machakann/vim-highlightedyank'
call plug#end()
colorscheme gruvbox

"Use 24-bit (true-color) mode in Vim/Neovim.
if (has("nvim"))
	let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
	set termguicolors
    let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
    let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"
endif

"key mappings
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha
