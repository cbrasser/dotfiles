"Plugins
call plug#begin()
" Completion engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" File explorer
Plug 'scrooloose/nerdTree'
" Emmet for HTML
Plug 'mattn/emmet-vim'
" Auto close parenthesis
Plug 'jiangmiao/auto-pairs'
" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'
" Easy text navigation
Plug 'easymotion/vim-easymotion'
" Sexy airline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

call plug#end()
highlight VertSplit cterm=NONE
" Set Leader
let mapleader = ","
" show line numbers
set number
" Enable mouse support
set mouse=a
" splits
" Split horizontally
nnoremap <C-S-Up> :sp <CR>
nnoremap <C-S-Down> :sp <CR>
" split vertically
nnoremap <C-S-Right> :vsp <CR>
nnoremap <C-S-Left> :vsp <CR>
" move between splits with control and arrows/hjkl
nnoremap <A-S> <C-W><C-J>
nnoremap <A-Down> <C-W><C-J>
nnoremap <A-k> <C-W><C-K>
nnoremap <A-Up> <C-W><C-K>
nnoremap <A-l> <C-W><C-L>
nnoremap <A-Right> <C-W><C-L>
nnoremap <A-h> <C-W><C-H>
nnoremap <A-Left> <C-W><C-H>

" Buffers
nnoremap <S-Left> :bprevious <CR>
nnoremap <S-Right> :bnext <CR>
" Close Buffer
nnoremap <C-W> :bd <CR>
" Airline Config
let g:airline_theme = 'fruit_punch'
" let g:airline_solarized_bg='dark'

" Powerline font settings

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
" show all buffers if there is only one tab open
let g:airline#extensions#tabline#enabled = 1

" Hide some areas
" remove the filetype part
" let g:airline_section_z=''
" remove separators for empty sections
let g:airline_section_z = airline#section#create(['%l:%v'])
let g:airline_skip_empty_sections = 1

" unicode symbols
let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
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
" Map deoplete selection to control + j/k instead of arrow keys
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Access easymotion through leader + s
map <Leader> <Plug>(easymotion-prefix)

" Open NERDTree
map <Leader>n :NERDTree <CR>
