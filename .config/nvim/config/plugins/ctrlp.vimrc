nnoremap <Leader>c :CtrlPClearCache<cr>
nnoremap <Leader>cst :CtrlPSmartTabs<CR>

nnoremap <Leader>th  :tabfirst<CR>
nnoremap <Leader>tj  :tabnext<CR>
nnoremap <Leader>tk  :tabprev<CR>
nnoremap <Leader>tl  :tablast<CR>
nnoremap <Leader>tt  :tabedit<Space>
nnoremap <Leader>tn  :tabnext<Space>
nnoremap <Leader>tm  :tabm<Space>
nnoremap <Leader>td  :tabclose<CR>

let g:ctrlp_custom_ignore = {
	\   'dir' : '\.git$\|build$\|bower_components\|node_modules\|dist\|target\|.DS_Store' ,
	\ 	'file' : '\v\.(exe|dll|lib)$'
	\ }
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_extensions = ['smarttabs']
let g:ctrlp_smarttabs_modify_tabline = 0
let g:ctrlp_use_caching = 0
let g:ctrlp_match_func = { 'match': 'cpsm#CtrlPMatch' }

if executable( 'ag' )
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

if executable( 'fd' )
	let g:ctrlp_user_command = 'fd --type f --color=never "" %s'
endif

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.idea/*,*/.DS_Store,*/vendor,*/node_modules
