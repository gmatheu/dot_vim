if exists('g:plug_installing_plugins')
  Plug 'mbbill/undotree'
  finish
endif

map <F3> :UndotreeToggle<CR>
