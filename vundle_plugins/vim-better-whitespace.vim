if exists('g:vundle_installing_plugins')
  Plugin 'ntpeters/vim-better-whitespace'
  finish
endif

autocmd BufWritePre * StripWhitespace

