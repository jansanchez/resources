
#codigo para agregar el color del repositorio git a tu terminal

export PS1='\u@\h:\w\[\033[32m\]$(__git_ps1 " (%s)")\[\033[0m\]$ '

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"