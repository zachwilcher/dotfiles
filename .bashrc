# ~/.bashrc

[[ $- != *i* ]] && return # If not running interactively, don't do anything


[[ $DISPLAY ]] && shopt -s checkwinsize

#solarized dark https://ethanschoonover.com/solarized/
base0="\[\033[38;2;131;148;150m\]\]"
orange="\[\033[38;2;203;75;22m\]\]"
magenta="\[\033[38;2;211;54;130m\]\]"
yellow="\[\033[38;2;181;137;0m\]\]"
blue="\[\033[38;2;38;139;210m\]\]"
green="\[\033[38;2;133;153;0m\]\]"

PS1="$base0[$green\u@\h $blue\W$base0]\$ "

unset base0
unset orange
unset magenta
unset yellow
unset blue
unset green


HISTCONTROL=ignorespace
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=10000 

shopt -s globstar

export EDITOR=/usr/bin/nvim

if [ -r .bash_aliases ]; then
    . .bash_aliases
fi

# gcc colors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# enable programmable completion features 
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

function replace {
	find $3 -type f -exec sed =i '/s/$2/$1/g';
}


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
