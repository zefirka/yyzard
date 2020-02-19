#!/bin/sh

function mkcd
{
  dir="$*";
  mkdir -p "$dir" && cd "$dir";
}

function fgp
{
    echo "Searching files with: $1 inside of $2"
    fgrep -ril "$1" "$2"
}

# Open Tracker ticket by current git branch
function st(){
    open https://$USER_CONFIG_TRACKER_BASE_URL/$(git rev-parse --abbrev-ref HEAD | grep -oE '^[A-Z]+\-\d+')/
}

# Open pull request to given repo
function og
{
    project="$1"

    if [ -z "$1" ]; then
	project="$USER_CONFIG_GITHUB_PROJECT"
    fi

    repo=$(basename `git rev-parse --show-toplevel`)
    branch=$(git rev-parse --abbrev-ref HEAD)
    open https://$USER_CONFIG_GITHUB_URL/$project/$repo/compare/$branch\?expand=1
}

# Run Emacs with ZSHRC file and given task file (or tasks folder)
function edz
{
    file="$*"
    $(e ~/.zshrc "~/.tasks/$file")
}

# Run Startrack ticket 
function stt
{
    ticket="$1"

    open "https://$USER_CONFIG_TRACKER_BASE_URL/$ticket"
}

function npkg
{
    open "https://npmjs.com/package/$1"
}

function ramda_doc
{
    method="$1"

    open "http://ramdajs.com/docs/#$method"
}

function as_zefirka
{
    git config --global user.name "Trdat Mkrtchyan"
    git config --global user.email "wombtromb@gmail.com"
}


function won
{
    cd "$HOME/Projects/$USER_WORK_PROJECTS/$1"
}
