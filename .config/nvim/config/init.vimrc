call plug#begin( '~/.nvim/plugged' )


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'iberianpig/ranger-explorer.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'


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
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ciaranm/detectindent'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tcomment_vim'
Plug 'Townk/vim-autoclose'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ruanyl/vim-fixmyjs'


call plug#end()
