
# Sessions
alias prog="gnome-terminal --geometry=80x25+0+0 -e 'bash';
gnome-terminal --geometry=80x21+0+500 -e 'bash';
gnome-terminal --geometry=80x60+653+0 -e 'bash';"
alias progl="gnome-terminal --geometry=80x47+0+0 -e 'bash';"
alias progr="gnome-terminal --geometry=80x47+653+0 -e 'bash';"
alias prl="progl"
alias prr="progr"

alias Sommar19="~/.Sommar19.sh"

# Git related
alias gtime='git ls-tree -r --name-only HEAD | while read filename; do
    echo "$(git log -1 --format="%ad" -- "$filename") $filename"
done'
alias gt='clear && git tree -n 15'
alias gtl='clear && git tree --color=always | less -R'

# Conda related
alias gogoatom='conda activate atomistics_amp0.7'
alias gga='gogoatom'
alias gogoldat='conda activate tif285-env'
alias ggl='gogoldat'

# From CompMat
export PYTHONPATH=$HOME/ase:$PYTHONPATH
export PATH=$HOME/ase/tools:$PATH
