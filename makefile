# https://github.com/venthur/dotfiles
# https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html
# Thanks Ventur for good guide how to use stow and for example makefile

all:
	stow --verbose --target=$$HOME --restow */

delete:
	stow --verbose --target=$$HOME --delete */

