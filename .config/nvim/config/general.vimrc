syntax on
syntax enable                 " Enable syntax highlighting


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread                  " Autoread when file changed from outside
set nofoldenable              " Not close folds
set paste                     " Paste text unmodified
set pastetoggle=<F3>          " Toggle paste and nopaste
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
autocmd VimResized * wincmd =	"	Set panes to equal width of window
" set termguicolors


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
filetype plugin indent on     " Enable filetype-specific plugins, indenting and detection
set autoindent                " Insert extra level of indent
set tabstop=2                 " # of spaces Tab in file uses
set softtabstop=2             " # of spaces Tab uses while editing
set shiftwidth=2              " # of spaces to use for auto indent
set expandtab                 " Insert space when tab used


if has( "autocmd" )
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType text setlocal textwidth=108

    " Trim whitespace onsave
    autocmd BufWritePre * %s/\s\+$//e

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
          \ if line( "'\"" ) > 1 && line( "'\"" ) <= line( "$" ) |
          \   exe "normal! g`\"" |
          \ endif
  augroup END

  augroup Windows
    au!
    au BufEnter,WinEnter,WinNew,VimResized *,*.*
          \ let &scrolloff=getwininfo(win_getid())[0]['height']/2      " keep cursor centered
    au FocusGained,VimEnter,WinEnter,BufWinEnter * setlocal cursorline " enable cursorline in focussed buffer
    au FocusGained,VimEnter,WinEnter,BufWinEnter * :checktime          " reload file if it has changed on disk
    au WinLeave,FocusLost * setlocal nocursorline                      " disable cursorline when leaving buffer
    au VimResized * wincmd =                                           " auto resize splits on resize
  augroup END
endif " has("autocmd")


colorscheme onedark
let g:onedark_termcolors=256

" colorscheme nord
" let g:nord_comment_brightness = 20
