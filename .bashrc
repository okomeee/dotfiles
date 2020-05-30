# prompt
if [ ${EUID:-${UID}} = 0 ]; then
  export PS1="\[\e[1;31m\][\u@\h] \w\n\\$\[\e[0m\] "
else
  export PS1="\[\e[1;36m\][\u@\h] \w\n\\$\[\e[0m\] "
fi

# alias
alias ls="ls -Gh"
alias l="ls -Gh"
alias la="ls -Ghla"
alias ll="ls -Ghl"

