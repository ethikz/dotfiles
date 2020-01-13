call plug#begin( '~/.nvim/plugged' )


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'iberianpig/ranger-explorer.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'AndrewRadev/splitjoin.vim'

if !has( 'nvim' )
    Plug 'rhysd/vim-healthcheck'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source Control
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'rhysd/git-messenger.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'whiteinge/diffconflicts'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'
Plug 'DavidEGx/ctrlp-smarttabs'
Plug 'nixprime/cpsm', { 'do': 'env PY3=OFF ./install.sh' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'BurntSushi/ripgrep'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Aesthetics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'lsdr/monokai'
Plug 'trusktr/seti.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sheerun/vim-polyglot'
Plug 'andreshazard/vim-freemarker'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'gorodinskiy/vim-coloresque'
Plug 'natebosch/vim-lsc'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-sleuth'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'Townk/vim-autoclose'
Plug 'alvan/vim-closetag'
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ruanyl/vim-fixmyjs'


call plug#end()
