install:
	vim +PluginInstall +qall

update:
	vim +PluginClean! +PluginInstall +PluginUpdate +qall
