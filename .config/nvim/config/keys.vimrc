""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""

" Override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" folding
nmap <Leader>f zf%


""""""""""""""""""""""""""""""
" => CtrlP
""""""""""""""""""""""""""""""
map <leader>C :CtrlPClearCache<cr>


""""""""""""""""""""""""""""""
" => Window
""""""""""""""""""""""""""""""
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


""""""""""""""""""""""""""""
" => ESLint / Stylelint
""""""""""""""""""""""""""""
nmap <Leader><Leader>fj :Fixmyjs<CR>


""""""""""""""""""""""""""""
" => Prettier
""""""""""""""""""""""""""""
nmap <Leader><Leader>p :Prettier<CR>


""""""""""""""""""""""""""""
" => RangerExplorer
""""""""""""""""""""""""""""
noremap <C-o> :RangerExplorer<CR>
