""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""
" Override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" folding
nmap <Leader>f zf%

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e


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
