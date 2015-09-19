if exists('g:vundle_installing_plugins')
  Plugin 'benmills/vimux'
  finish
endif

let g:VimuxUseNearestPane = 1
function WriteAndVimuxRunLastCommand()
  :call WriteBufferIfNecessary()
  :call VimuxRunLastCommand()
endfunction

nnoremap <leader>vc :VimuxPromptCommand<CR>
nnoremap <silent> <leader>vw :call WriteAndVimuxRunLastCommand()<CR>
