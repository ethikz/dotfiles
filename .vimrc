set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'tpope/vim-rails.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'slim-template/vim-slim'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Townk/vim-autoclose'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'gregsexton/MatchTag'
Plugin 'docunext/closetag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'digitaltoad/vim-jade'
Plugin 'lsdr/monokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'miripiruni/CSScomb-for-Vim'
Plugin 'JarrodCTaylor/vim-js2coffee'
Plugin 'benmills/vimux'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'clausreinke/typescript-tools.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'koalaman/shellcheck'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-syntastic/syntastic'
Plugin 'Shutnik/jshint2.vim'
Plugin 'ruanyl/vim-fixmyjs'
call vundle#end()
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " Enable filetype-specific plugins, indenting and detection
set autoread                  " Autoread when file changed from outside
set nofoldenable              " Not close folds
set paste                     " Paste text unmodified
set pastetoggle=<F3>          " Toggle paste and nopaste
set nocompatible              " vim, not vi
set ttyfast                   " Fast terminal
set backspace=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler                     " Show the line number on the bar
set ignorecase                " Case insensitive searching
set hlsearch                  " Highlight all search patterns used
set incsearch                 " Enable incremental searching
set smartcase                 " Try to be smart about case when searching
set lazyredraw                " Don't redraw while executing macros
set splitright                " Split pane to right of buffer
set equalalways               " Equal width pane
set showmatch                 " Show matching brackets
set number                    " Display line numbers


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable( expand("$HOME/.vim/colors/railscast.vim") )
  colorscheme molokai
endif

set background=dark
set t_Co=256                  " 256 Colors
syntax enable                 " Enable syntax highlighting
set encoding=utf8             " Set utf8 as standard encoding


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartindent               " Insert extra level of indent
set ts=2                      " # of spaces Tab in file uses
set sts=2                     " # of spaces Tab uses while editing
set sw=2                      " # of spaces to use for auto indent
set expandtab                 " Insert space when tab used


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
set laststatus=2              " Show status in bar always


""""""""""""""""""""""""""""""
" => Airline
""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep          = ''
let g:airline_right_sep         = ''
let g:airline_linecolumn_prefix = '¶'
let g:airline_enable_branch     = '⎇ '
let g:airline_paste_symbol      = '⇲'
let g:airline_theme             = 'powerlineish'


""""""""""""""""""""""""""""""
" => CtrlP 
""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|git|.DS_Store|.git'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0


""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1


"""""""""""""""""""""""""""""
" => JS2Coffee
"""""""""""""""""""""""""""""
nnoremap<Leader>bc :CoffeeBuffer2JS<CR>
nnoremap<Leader>sc :CoffeeSelection2JS<CR>
nnoremap<Leader>bj :JSBuffer2Coffee<CR>
nnoremap<Leader>bs :JSSelection2Coffee<CR>


""""""""""""""""""""""""""""
" => CSSComb
""""""""""""""""""""""""""""
nnoremap<Leader>css :CSScomb<CR>


""""""""""""""""""""""""""""
" => TypeScript 
""""""""""""""""""""""""""""
let g:typescript_indent_disable = 1
let g:typescript_compiler_options = '-sourcemap'
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow


""""""""""""""""""""""""""""
" => ShellCheck
""""""""""""""""""""""""""""
let g:syntastic_sh_shellcheck_args="-e SC2039"


""""""""""""""""""""""""""""
" => ESLint
""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:loaded_syntastic_javascript_eslint_checker = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
noremap <Leader><Leader>fj :Fixmyjs<CR>

" enable autoread to reload any files from files when checktime is called and
" the file is changed
set autoread

" add an autocmd after vim started to execute checktime for *.js files on write
au VimEnter *.js au BufWritePost *.js checktime


""""""""""""""""""""""""""""
" => JSHint
""""""""""""""""""""""""""""
let jshint2_confirm = 0
let jshint2_read = 1
