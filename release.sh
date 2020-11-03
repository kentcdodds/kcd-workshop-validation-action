if [ -z "$(git status --porcelain)" ]; then
  git tag -a -m "$1" v1
  git push --follow-tags
else 
  echo "🚨 [31;1mThere are uncommitted changes. Cannot release with uncommitted changes[0m"
  git status
  exit 1
fi
