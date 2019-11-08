for fpath in split(globpath('~/.config/nvim/config/plugins/', '*.vimrc'), '\n')
  exe 'source' fpath
endfor
