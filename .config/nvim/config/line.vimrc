""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
set laststatus=2              " Show status in bar always
set showtabline=2             " always show tabline
set noshowmode                " hide default mode text (e.g. INSERT) as airline already displays it


""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""
let g:airline_left_sep          = ''
let g:airline_right_sep         = ''
let g:airline_linecolumn_prefix = '¶'
let g:airline_enable_branch     = '⎇ '
let g:airline_paste_symbol      = '⇲'
let g:airline_theme             = 'onedark'
" let g:airline_theme             = 'nord'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#ctrlp#color_template = 'insert'
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#capslock#enabled   = 0
let g:airline#extensions#csv#enabled        = 0
let g:airline#extensions#ctrlspace#enabled  = 0
let g:airline#extensions#eclim#enabled      = 1
let g:airline#extensions#hunks#enabled      = 0
let g:airline#extensions#nrrwrgn#enabled    = 0
let g:airline#extensions#promptline#enabled = 0
let g:airline#extensions#syntastic#enabled  = 0
let g:airline#extensions#taboo#enabled      = 0
let g:airline#extensions#tagbar#enabled     = 0
let g:airline#extensions#virtualenv#enabled = 0
let g:airline#extensions#whitespace#enabled = 0


""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""
let g:lightline = { 'colorscheme': 'onedark' }
" let g:lightline = { 'colorscheme': 'nord' }
