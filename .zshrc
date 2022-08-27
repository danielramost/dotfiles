source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose"
setopt PROMPT_SUBST ; PS1=$'\n''%B%F{green}%~%f  at %*  $(__git_ps1 "(%s)")%b'$'\n''> '
