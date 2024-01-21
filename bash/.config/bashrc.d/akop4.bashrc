#!bin/bash 

# Add this condition in .bashrc
#if [ -d ~/.config/bashrc.d ]; then
#	for rc in ~/.config/bashrc.d/*; do
#		if [ -f "$rc" ]; then
#			. "$rc"
#		fi
#	done
#fi

# Use bash-completion, if available
#[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
#    . /usr/share/bash-completion/bash_completion

# Install Starship - curl -sS https://starship.rs/install.sh | sh
#eval "$(starship init bash)"

# Import flatpak programs in path
export PATH=$PATH:"$HOME/.local/bin:$HOME/.cargo/bin:/var/lib/flatpak/exports/bin:/.local/share/flatpak/exports/bin"

#iatest=$(expr index "$-" i)

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
#if [[ $iatest -gt 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
#if [[ $iatest -gt 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# Set the default editor
export EDITOR=nvim
export VISUAL=nvim

# To have colors for ls and all grep commands such as grep, egrep and zgrep
#export CLICOLOR=1
#export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'
#alias grep="/usr/bin/grep $GREP_OPTIONS"
#unset GREP_OPTIONS

# Color for manpages in less makes manpages a little easier to read
#export LESS_TERMCAP_mb=$'\E[01;31m'
#export LESS_TERMCAP_md=$'\E[01;31m'
#export LESS_TERMCAP_me=$'\E[0m'
#export LESS_TERMCAP_se=$'\E[0m'
#export LESS_TERMCAP_so=$'\E[01;44;33m'
#export LESS_TERMCAP_ue=$'\E[0m'
#export LESS_TERMCAP_us=$'\E[01;32m'


# GitHub Titus Additions
gcom() {
    git add .
    git commit -m "$1"
}

lazyg() {
    git add .
    git commit -m "$1"
    git push
}

# Test hardware acceleration in browser
# export LIBVA_DRIVER_NAME=iHD
