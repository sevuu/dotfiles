export PATH=$PATH:~/.local/bin
export ZSH="~/.oh-my-zsh"
export EDITOR="nvim"
alias vim="nvim"
alias cls="clear"
alias osukill="~/.local/bin/osukill"
alias osu="~/.local/bin/osu"
alias lg="lazygit"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Builds/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# yes, i stole the prompt from luke smith
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
