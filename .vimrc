set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tomtom/tcomment_vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Townk/vim-autoclose'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'elzr/vim-json'
Plugin 'lsdr/monokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic'
Plugin 'benmills/vimux'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'clausreinke/typescript-tools.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'koalaman/shellcheck'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ruanyl/vim-fixmyjs'
Plugin 'andreshazard/vim-freemarker'
Plugin 'posva/vim-vue'
Plugin 'trusktr/seti.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
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
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


colorscheme onedark

set background=dark
set t_Co=256                  " 256 Colors
syntax enable                 " Enable syntax highlighting
set encoding=utf8             " Set utf8 as standard encoding
let g:onedark_termcolors=256


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
set tabstop=2                 " # of spaces Tab in file uses
set softtabstop=2             " # of spaces Tab uses while editing
set shiftwidth=2              " # of spaces to use for auto indent
set expandtab                 " Insert space when tab used
autocmd BufWritePre * :%s/\s\+$//e " Remove trailing whitespace on save


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
let g:airline_theme             = 'onedark'
" let g:airline_theme             = 'powerlineish'


""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""
let g:lightline = { 'colorscheme': 'onedark' }


""""""""""""""""""""""""""""""
" => CtrlP
""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = 'node_modules\|git|.DS_Store|.git'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 0
map <leader>C :CtrlPClearCache<cr>
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1


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
" => ESLint / Stylelint
""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:loaded_syntastic_javascript_eslint_checker = 1
" let g:syntastic_javascript_checkers = ['babel-eslint']
" let g:syntastic_javascript_eslint_args = ['--fix']
" let g:syntastic_javascript_eslint_exe = 'npm run eslint --'
let g:syntastic_scss_checkers = ['stylelint']
let g:syntastic_scss_stylelint_args = ['--fix']
let g:syntastic_scss_stylelint_exe = 'npm run stylelint --'
let g:fixmyjs_rc_filename = [ '.eslintrc', '.eslintrc.json' ]
nmap <Leader><Leader>fj :Fixmyjs<CR>

" enable autoread to reload any files from files when checktime is called and
" the file is changed
set autoread

" add an autocmd after vim started to execute checktime for *.js files on write
au VimEnter *.js au BufWritePost *.js checktime


""""""""""""""""""""""""""""
" => Prettier
""""""""""""""""""""""""""""
let g:prettier#autoformat = 0
nmap <Leader><Leader>p :Prettier<CR>
