#!/bin/bash

set -eu

if false; then
    echo update remotes
    while read slug; do git fetch "$slug"; done < ../slugnames.txt
fi

# set up ref branches (once)
#while read slug; do git co -b ${slug}-ref ${slug}/ref ; done < ../slugnames.txt

# set up main branches (once)
#while read slug; do git co -b ${slug}-main ${slug}/main ; done < ../slugnames.txt


if false; then
    while read slug; do
        echo "$slug"
        if false; then
            # Construct ref branch
            # Need to use the 'feedback' branch because the incorrectly merged branches will have multiple roots :(
            ROOT_COMMIT="$(git rev-list --max-parents=0 "${slug}"/feedback)"
            # Start from the root commit.
            git checkout "${slug}-ref"
            git reset --hard "${ROOT_COMMIT}"
            # merge in the ref
            git merge --strategy-option=theirs --allow-unrelated-histories main -m "Merge the reference branch"
        fi
        #git checkout "${slug}-ref"
        # git merge theirs: https://stackoverflow.com/a/46741538/69707
        #git merge -s ours --no-commit main
        #git read-tree -m -u main
        #git commit -m "Merge reference"
    done < ../slugnames.txt
fi

# Merge main branches
if false; then
    while read slug; do
        git checkout "${slug}-main"
        git reset --hard "${slug}/main"
        git merge "${slug}-ref" -m "Merge from the reference"
    done < ../slugnames.txt
fi

while read slug; do
    echo "$slug"
    git push "${slug}" "${slug}-ref":ref --force
    git push "${slug}" "${slug}-main":main
done < ../slugnames.txt

