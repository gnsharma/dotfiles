export WORKON_HOME=$HOME/.virtualenvs
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# fzf options
export FZF_DEFAULT_COMMAND='rg --files --no-ignore-vcs --hidden'
export FZF_DEFAULT_OPTS='--height 50% --layout reverse --info inline --border -m'

source "${HOME}/dotfiles/.alias"
source "${HOME}/dotfiles/sandboxd"

# bindkey -v
# bindkey -M viins "jk" vi-cmd-mode
# bindkey -M viins "kj" vi-cmd-mode

# Better searching in command mode
# bindkey -M vicmd '?' history-incremental-search-backward
# bindkey -M vicmd '/' history-incremental-search-forward

# Beginning search with arrow keys
# bindkey "^[OA" up-line-or-beginning-search
# bindkey "^[OB" down-line-or-beginning-search
# bindkey -M vicmd "k" up-line-or-beginning-search
# bindkey -M vicmd "j" down-line-or-beginning-search

# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
# export KEYTIMEOUT=1

# Updates editor information when the keymap changes.
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/[% INSERT]%}"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

PS1="[%~]: "
RPS1="[% INSERT]%"

# export EDITOR="/usr/local/bin/nvim"
export PAGER="less"

export NPM_TOKEN=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
