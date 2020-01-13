""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""
" Override read-only permissions
cmap w!! %!sudo tee > /dev/null %

" folding
nmap <Leader>f zf%

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

" save using <C-s> in every mode
" when in operator-pending or insert, takes you to normal mode
nnoremap <C-s> :write<Cr>
vnoremap <C-s> <C-c>:write<Cr>
inoremap <C-s> <Esc>:write<Cr>
onoremap <C-s> <Esc>:write<Cr>

" use qq to record, q to stop, Q to play a macro
nnoremap Q @q
vnoremap Q :normal @q

" when pairing some braces or quotes, put cursor between them
inoremap <>   <><Left>
inoremap ()   ()<Left>
inoremap {}   {}<Left>
inoremap []   []<Left>
inoremap ""   ""<Left>
inoremap ''   ''<Left>
inoremap ``   ``<Left>

" use tab and shift tab to indent and de-indent code
nnoremap <Tab>   >>
nnoremap <S-Tab> <<
vnoremap <Tab>   >><Esc>gv
vnoremap <S-Tab> <<<Esc>gv

" convenience function for setting filetype specific spacing
if !exists('*s:IndentSize')
  function! s:IndentSize(amount)
    exe "setlocal expandtab ts=" . a:amount . " sts=" . a:amount . " sw=" . a:amount
  endfunction
endif

" use ripgrep as grepprg
if executable('rg')
  set grepprg=rg\ --vimgrep\ --hidden\ --no-ignore-vcs
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif


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
" => DiffConflicts
""""""""""""""""""""""""""""
nmap <Leader><Leader>dc :DiffConflicts<CR>
