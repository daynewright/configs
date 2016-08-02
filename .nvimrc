
set nocompatible

set encoding=utf-8
set guifont=hack:h11
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set runtimepath+=~/.vim
set runtimepath+=~/.vim/bundle

""""""""""""""""""""""""
"       Pathogen       "
""""""""""""""""""""""""

execute pathogen#infect()
filetype plugin indent on
filetype plugin on

syntax on

" setting colorscheme
let g:gruvbox_contrast_dark = 'soft'
colorscheme gruvbox
set background=dark

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


""""""""""""""""""""""""
"       air-line       "
""""""""""""""""""""""""

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set laststatus=2
set noshowmode

""""""""""""""""""""""""
"       NERDTree       "
""""""""""""""""""""""""

" shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Auto close if NERDTree is the last thing open
autocmd bufenter *
    \ if (winnr("$") == 1 && exists("b:NERDTree")
    \ && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIgnore     = ['\.DS_Store$']

"Keeps 5 lines below cursor
set scrolloff=5

"Turns on number line
set number
set title
set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set autoindent
set cursorline

"Move cursor to search results as you type
set incsearch

"Highlight search results
set hlsearch

function ToggleWidth()
	if &shiftwidth == 4
		set tabstop=2
		set shiftwidth=2
		echom "set indents to 2"
	else
		set tabstop=4
		set shiftwidth=4
	echom "set indents to 4"
	endif
endfunction

function TrimWhiteSpace()
    %s/\s*$//
    ''
:endfunction

map <F2> :call TrimWhiteSpace()<CR>
map! <F2> :call TrimWhiteSpace()<CR>
set list lcs=tab:⟩⋅,trail:⋅



map <F3> :call ToggleWidth()<CR>

