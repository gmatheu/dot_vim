if exists('g:vundle_installing_plugins')
  Plugin 'AndrewRadev/switch.vim'
  finish
endif

let g:switch_custom_definitions =
    \ [
    \   ['be_truthy', 'be_falsey']
    \ ]
nnoremap - :Switch<cr>
