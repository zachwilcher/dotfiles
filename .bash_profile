#
# ~/.bash_profile
#

[ -f ~/.bashrc ] && . ~/.bashrc

[ -d ~/.local/bin ] && PATH=$HOME/.local/bin:$PATH


if [ -x "$(command -v ruby)" ] && [ -d "$HOME/.gem" ]; then
    PATH="$(ruby -e 'puts Gem.user_dir')/bin:$PATH"
fi

EDITOR=/usr/bin/nvim

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

