" Source all the plugin files again, this time loading their configuration.
for file in split(system("cat plugins.txt | grep -v '*'"))
  let plugin_file = join(["~/.vim/plug_plugins/", file, ".vim"], "")
  exe 'source' plugin_file
endfor

for file in split(glob(g:vimdir . '/plug_plugins/custom/*.vim'), '\n')
  exe 'source' file
endfor
