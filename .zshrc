# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Personal settings

function expand-alias() {
        zle _expand_alias
        zle self-insert
}
zle -N expand-alias
bindkey -M main ' ' expand-alias

autoload -Uz compinit; compinit;

setopt AUTOCD
setopt HISTIGNOREDUPS

export GH_USERNAME=mbadgett

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  alias ls="ls --color"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  alias ls="ls -G"
fi
alias g='git'
alias zedit='vim ~/.zshrc'
alias zreload='source ~/.zshrc'
alias work='cd /workspaces && cd $(command ls -d */ | head -n 1)'
