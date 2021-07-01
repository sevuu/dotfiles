# Lines configured by zsh-newuser-install

export PATH=$PATH:~/.local/bin
export ZSH="~/.oh-my-zsh"
export EDITOR="nvim"
alias vim="nvim"
alias osukill="~/.local/bin/osukill"
alias osu="~/.local/bin/osu"
alias lg="lazygit"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# yes, i stole the prompt from luke smith
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Builds/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


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
