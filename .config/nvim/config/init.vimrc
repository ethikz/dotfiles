call plug#begin('~/.nvim/plugged')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'kien/ctrlp.vim'
Plug 'renyard/vim-rangerexplorer'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'SirVer/ultisnips'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Aesthetics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'flazz/vim-colorschemes'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'lsdr/monokai'
Plug 'trusktr/seti.vim'
Plug 'vim-airline/vim-airline-themes'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'andreshazard/vim-freemarker'
Plug 'clausreinke/typescript-tools.vim'
Plug 'sheerun/vim-polyglot'


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
