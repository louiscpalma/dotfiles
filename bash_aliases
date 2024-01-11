## Program renames
alias docker="podman"
alias bat="batcat"
command -v kubecolor &> /dev/null && alias kubectl="kubecolor"

## ls commands
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'


## grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

## Navigation
alias code="cd ~/code && (find . -maxdepth 2 -mindepth 2 ! -regex '\./infra.*' -printf '%P\\n')"
alias notes="cd ~/notes && vim ."
