# Makefile configuration
#
# Maintainer:   Marc-Antoine Loignon <info@lognoz.com>
# Last Change:  2018-06-25
# Version:      1.0.0

install:
	vim +PluginInstall +qall

update:
	vim +PluginClean! +PluginInstall +PluginUpdate +qall
