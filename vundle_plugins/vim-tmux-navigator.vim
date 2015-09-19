if exists('g:vundle_installing_plugins')
  Plugin 'christoomey/vim-tmux-navigator'
  finish
endif

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
