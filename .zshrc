# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export GPG_TTY=`tty`

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

autoload -Uz compinit; compinit;

export GOPATH="$HOME/.go"
alias g="git"
alias c="code"
eval "$(rbenv init -)"
alias wtf="spring stop"
alias rld="source ~/.zshrc"
alias zedit="code ~/.zshrc"

alias hcs="pushd ~/.go/src/github.com/github/hypercredscan"
alias gh1="pushd ~/github/github"
alias gh2="pushd ~/github/github2"
alias tss="pushd ~/github/token-scanning-service"
alias hs="pushd ~/github/hydro-schemas"
alias ssp="pushd ~/github/secret-scanning-proto"
alias ss="pushd ~/github/secret-scanning"
alias ops="pushd ~/github/ops"
alias snek="pushd ~/github/snek"

export GOROOT="$(brew --prefix golang)/libexec"
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GOPROXYUSER="mbadgett"
export GOPROXYPASS=""
export GOPROXY="https://${GOPROXYUSER}:${GOPROXYPASS}@octofactory.github.com,https://octofactory.githubapp.com,https://proxy.golang.org,direct"
export GOPRIVATE=
export GONOPROXY=
export GONOSUMDB='github.com/github/*'
export CISTERN_GITHUB_TOKEN="b4bb135e430f03f50e49e148c5c1972066167e4f"
export HYDRO_KAFKA_BROKERS="127.0.0.1:9092"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

plugins=(git ssh-agent)