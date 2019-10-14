" let g:ctrlp_working_path_mode = 'ra'
" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = 'node_modules\|git|.DS_Store|.git'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable( 'ag' )
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
