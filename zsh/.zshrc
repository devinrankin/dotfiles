#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -l --color=auto'
alias la='ls -la'
alias i='sudo paru'
alias grep='grep --color=auto'
alias vim='nvim'
PROMPT='[%n@%m %1~]$ '

# Start commands
timeout -f 1s momoisay -f -c cyan Welcome back!
