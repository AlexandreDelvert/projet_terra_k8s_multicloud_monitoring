#!/bin/bash

# Récupère la dernière version (sinon démarre à 0.0.0)
VERSION_FILE="version.txt"
DEFAULT_VERSION="0.0.0"

if [[ ! -f $VERSION_FILE ]]; then
  echo $DEFAULT_VERSION > $VERSION_FILE
fi

last_version=$(cat $VERSION_FILE)
IFS='.' read -r major minor patch <<< "$last_version"

# Statistiques de changements
added_files=$(git diff --cached --name-only --diff-filter=A | wc -l)
changed_lines=$(git diff --cached --numstat | awk '{added += $1; deleted += $2} END {print added + deleted}')

# Détermination du type d'incrément
if [[ $changed_lines -gt 20 || $added_files -gt 2 ]]; then
  ((major++))
  minor=0
  patch=0
elif [[ $changed_lines -gt 20 || $added_files -gt 0 ]]; then
  ((minor++))
  patch=0
else
  ((patch++))
fi

new_version="$major.$minor.$patch"
echo "$new_version" > $VERSION_FILE
echo "🔖 Nouvelle version: $new_version"

