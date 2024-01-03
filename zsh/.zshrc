# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/user/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Fix bugs
export KEYTIMEOUT=1
bindkey "^?" backward-delete-char

# Change cursor shape for different vi mode
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select

# Colors
zstyle ':completion:*:parameters' list-colors '=*=32'
zstyle ':completion:*:parameters' list-colors '=*=32'
zstyle ':completion:*:parameters' list-colors '=*=32'
zstyle ':completion:*:parameters' list-colors '=*=32'
zstyle ':completion:*:parameters' list-colors '=*=32'
zstyle ':completion:*:parameters' list-colors '=*=32'
eval "$(dircolors)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu select

# Make man colorful
export LESS_TERMCAP_mb=$'\e[1;6;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;100m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

export COLORTERM=truecolor

# Aliases
alias ls='ls --color=tty'
alias ll='ls -lh --color=tty'
alias l='ls -lah --color=tty'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias v='nvim'
alias vim='nvim'

# Starship
eval "$(starship init zsh)"

# Zsh autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Zsh syntax highlighting
# Put this at the end
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
