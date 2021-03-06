" ----------------------------------------
" Plug
" ----------------------------------------

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

function InstallPlugin(name)
  if exists('g:plug_installing_plugins')
    Plug a:name
  endif
endfunction

" Source all the plugins with a global variable set that ensures only the
" Plugin 'name' code will be called.
function SourcePlugins()
  for file in split(system("cat " . g:vimdir ."/plugins.txt | grep -v '*'"))
    let plugin_file = join([g:pluginsdir, file, ".vim"], "")
    exe 'source' fnameescape(plugin_file)
  endfor
  for file in split(glob(g:pluginsdir . '/custom/*.vim'), '\n')
    exe 'source' fnameescape(file)
  endfor
endfunction
let g:plug_installing_plugins = 1
call SourcePlugins()
unlet g:plug_installing_plugins

" Initialize plugin system
call plug#end()
