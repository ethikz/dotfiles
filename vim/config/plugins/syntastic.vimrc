let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" let g:loaded_syntastic_javascript_eslint_checker = 1
" let g:syntastic_javascript_eslint_generic = 1
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = '/Users/c88199/.nvm/versions/node/v10.15.1/bin/eslint'
" let g:syntastic_javascript_eslint_args = ['--fix']
" let g:syntastic_vue_checkers = ['eslint']
" let g:syntastic_vue_eslint_exec = ['/Users/c88199/.nvm/versions/node/v10.15.1/bin/eslint']
" let g:syntastic_vue_eslint_args = ['--fix']

let g:syntastic_scss_checkers = ['stylelint']
let g:syntastic_scss_stylelint_args = ['--fix']
let g:syntastic_scss_stylelint_exe = 'npm run stylelint --'
let g:fixmyjs_rc_filename = [ '.eslintrc', '.eslintrc.json', '.eslintrc.js' ]

autocmd FileType vue syntax sync fromstart    " Sync syntax highlighting for vue


" add an autocmd after vim started to execute checktime for *.js files on write
au VimEnter *.js au BufWritePost *.js checktime
