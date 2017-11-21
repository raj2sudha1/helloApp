#!/bin/sh


#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "fetch Latest"
git fetch --prune

UPSTREAM=${1:-'@{u}'}
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse "$UPSTREAM")
BASE=$(git merge-base @ "$UPSTREAM")

if [ $LOCAL != $REMOTE ]; then
    #echo "Up-to-date"
#elif [ $LOCAL = $BASE ]; then
    echo "Update available and downloading..."
    npm stop && git reset --hard && git clean -dfx && git pull && npm install && npm start &
    #echo "Need to pull"
#elif [ $REMOTE = $BASE ]; then
#   echo "Need to push"
#else
#   echo "Diverged"
fi
