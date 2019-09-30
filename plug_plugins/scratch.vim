if exists('g:plug_installing_plugins')
  Plug 'mtth/scratch.vim'
  finish
endif

let g:scratch_no_mappings = 1
let g:scratch_autohide = 0

" nmap gs <plug>(scratch-insert-reuse)
" nmap gS <plug>(scratch-insert-clear)
" xmap gs <plug>(scratch-selection-reuse)
" xmap gS <plug>(scratch-selection-clear)
