#!/bin/bash
# git_auto.sh
git add .
git commit -m "Auto-commit on $(date '+%Y-%m-%d %H:%M:%S')"
git push origin main
echo "Changes committed and pushed to main."
