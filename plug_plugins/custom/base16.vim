call InstallPlugin('danielwe/base16-vim')

function! s:base16_customize() abort
  call Base16hi("CursorLine", g:base16_gui05, g:base16_gui03, g:base16_cterm05, g:base16_cterm03, "", "")
  call Base16hi("Visual", g:base16_gui05, g:base16_gui03, g:base16_cterm05, g:base16_cterm03, "", "")
endfunction

augroup on_change_colorschema
  autocmd!
  autocmd ColorScheme * call s:base16_customize()
augroup END
