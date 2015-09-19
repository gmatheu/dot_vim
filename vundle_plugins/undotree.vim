if exists('g:vundle_installing_plugins')
  Plugin 'mbbill/undotree'
  finish
endif

map <F3> :UndotreeToggle<CR>
