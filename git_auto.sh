#!/bin/bash
# git_auto.sh 
# version 1.1

# get current git branch 
current_branch=$(git rev-parse --abbrev-ref HEAD)

# check if in git repo 
if [ -z "$current_branch" ]; then 
    echo "Error: Not in a git repository."
    exit 1 
fi 

git add .

git commit -m "Auto-commit on $(date '+%Y-%m-%d %H:%M:%S') via git-auto"

git push origin "$current_branch"

echo "Changes committed and pushed to $current_branch."
