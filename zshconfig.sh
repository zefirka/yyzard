export EDITOR=emacs

# Common helpers
source ~/.tasks/common
source ~/.tasks/docker

ZSH_THEME="half-life"

# Aliases
## Emacs
alias emacs="/usr/local/Cellar/emacs/24.x/Emacs.app/Contents/MacOS/Emacs -nw"
alias e=emacs
alias ee="e ~/.emacs"

## Git
alias gcfd="git clean -fd"

# NPM
alias npmv="echo \"from json import loads; print(loads(open('package.json').read())['version'])\" | python"
alias npmc="python ~/.tasks/npmc.py"
alias npmp="python ~/.tasks/npmp.py"

## Python
alias pipi="pip install -r requirements.txt"
alias p="python"
alias prun="python run.py"

# Utils
alias rmrf="rm -rf"
alias edhosts="e /etc/hosts"
