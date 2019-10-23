nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <leader>nf :NERDTreeFind<CR>

let NERDTreeShowHidden=1
let NERDTreeStatusline="%{exists('b:NERDTree')?fnamemodify(b:NERDTree.root.path.str(), ':~'):''}"
let NERDTreeIgnore = ['\.git$', '^node_modules$']
