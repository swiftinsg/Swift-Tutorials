#!/bin/bash
read -p "💾 Commit message: "  message

# Build Project
sh build.sh

# Add everything to git
git add .
git status

# Commit change
read -p "👀 Commit? (y/n) " commit

if [ "$commit" == 'y' ]; then
git commit -m "$message"

# Push to main
git push origin

# Push to mirror
git push mirror

echo "🎉 It's done!"

else
echo "😢 No commits made"
fi
