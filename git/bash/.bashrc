
# metodo simple para agregar un indicador de color a los repositorios git en tu terminal
# por lo general agregar al final del archivo ".bashrc"
# ruta general: ~/.bashrc
# ruta general: home/{nombre-de-usuario}/.bashrc

export PS1='\u@\h:\w\[\033[32m\]$(__git_ps1 " (%s)")\[\033[0m\]$ '

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"