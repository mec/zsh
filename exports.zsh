export PATH=$HOME/bin:/usr/local/bin:$HOME/.composer/vendor/bin:$HOME/Library/Python/3.6/bin:$PATH
# n prefix
export N_PREFIX="$HOME/.n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

# Setup terminal, and turn on colors
export TERM=xterm-256color

export CLICOLOR=1 # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export LSCOLORS=exfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='more'
export EDITOR='code'
# CTAGS Sorting in VIM/Emacs is better behaved with this in place
export LC_COLLATE=C
