#!/bin/bash

#set -eu

# http://www.binaryphile.com/bash/2020/01/12/determining-the-location-of-your-script-in-bash.html
TOP=$(cd "$(dirname "$0")"; cd -P ..; pwd)
SLUGNAMES="${TOP}/repos/slugnames.txt"

function sync_local_portfolio() {
    cd "${TOP}/repos/ai-portfolio"
    git checkout main
    (cd "${TOP}/portfolio"; git archive main . | (cd ../repos/ai-portfolio && tar xv))
    git status
}

function update_remotes() {
    while read slug; do git fetch "$slug"; done < "$SLUGNAMES"
}

function setup_branches() {
    # set up ref branches (once)
    #while read slug; do git co -b ${slug}-ref ${slug}/ref ; done < "$SLUGNAMES"

    # set up main branches (once)
    #while read slug; do git co -b ${slug}-main ${slug}/main ; done < "$SLUGNAMES"
}

function update_ref_branches() {
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
        else
            git checkout "${slug}-ref"
            # git merge theirs: https://stackoverflow.com/a/46741538/69707
            git merge -s ours --no-commit main
            git read-tree -m -u main
            git commit -m "Merge reference"
        fi
    done < "$SLUGNAMES"
}

function merge_main_branches() {
    while read slug; do
        git checkout "${slug}-main"
        # Update in case we're behind or have local changes.
        git reset --hard "${slug}/main"
        git merge "${slug}-ref" -m "Merge from the reference"
    done < "$SLUGNAMES"
}

function push_updates() {
    git push origin main:main
    git push origin main:ref
    while read slug; do
        echo "$slug"
        git push "${slug}" "${slug}-ref":ref
        git push "${slug}" "${slug}-main":main
    done < "$SLUGNAMES"
}