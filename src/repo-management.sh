#!/bin/bash

# This script should be run within the repos/ai-portfoilo directory

set -eu

# http://www.binaryphile.com/bash/2020/01/12/determining-the-location-of-your-script-in-bash.html
TOP=$(cd "$(dirname "$0")"; cd -P ..; pwd)
SLUGNAMES="${TOP}/repos/slugnames.txt"

# Read in the slugnames (use with https://stackoverflow.com/questions/8880603/loop-through-an-array-of-strings-in-bash)
slugnames=()
while read slug; do
    slugnames+=($slug)
done < $SLUGNAMES

if [ $# == 0 ]; then
    cmdname=help
else
    cmdname="${1}"
    shift
fi

case "$cmdname" in
    import_new_content)
        cd "${TOP}/repos/ai-portfolio"
        git checkout main
        (cd "${TOP}/portfolio"; git archive main . | (cd ../repos/ai-portfolio && tar xv))
        git status
        ;;

    update_student_work)
        while read slug; do
            if false; then # worktree version
                (cd ../portfolio-$slug && git pull --ff-only "$slug")
            else
                git checkout "${slug}-main"
                git pull --ff-only
            fi
        done < "$SLUGNAMES"
        ;;

    setup_branches)
        # https://stackoverflow.com/a/3847586/69707
        branches=()
        eval "$(git for-each-ref --shell --format='branches+=(%(refname))' refs/heads/)"

        # https://stackoverflow.com/questions/8880603/loop-through-an-array-of-strings-in-bash
        for slug in "${slugnames[@]}"; do
            if [[ ! " ${branches[@]} " =~ " refs/heads/${slug}-ref " ]]; then
                echo "Missing ${slug}-ref"
                git fetch ${slug}
                git checkout -b ${slug}-ref ${slug}/ref

                # Construct ref branch
                # Need to use the 'feedback' branch because the incorrectly merged branches will have multiple roots :(
                ROOT_COMMIT="$(git rev-list --max-parents=0 "${slug}"/feedback)"
                # Start from the root commit.
                git checkout "${slug}-ref"
                git reset --hard "${ROOT_COMMIT}"
                # merge in the ref
                git merge --strategy-option=theirs --allow-unrelated-histories main -m "Merge the reference branch"
            fi
            if [[ ! " ${branches[@]} " =~ " refs/heads/${slug}-main " ]]; then
                echo "Missing ${slug}-main"
                git fetch ${slug}
                git co -b ${slug}-main ${slug}/main
            fi
        done
        ;;

    setup_worktrees)
        git checkout main
        for slug in "${slugnames[@]}"; do
            if [[ ! -d "../portfolio-$slug" ]]; then
                git worktree add "../portfolio-$slug" "$slug"-main
            fi
        done
        ;;

    update_ref_branches)
        while read slug; do
            echo "$slug"
            git checkout "${slug}-ref"
            # git merge theirs: https://stackoverflow.com/a/46741538/69707
            git merge -s ours --no-commit main
            git read-tree -m -u main
            git commit -m "Merge reference" || true
        done < "$SLUGNAMES"
        ;;

    merge_main_branches)
        while read slug; do
            git checkout "${slug}-main"
            # Update in case we're behind or have local changes.
            git reset --hard "${slug}/main"
            git merge "${slug}-ref" -m "Merge from the reference"
        done < "$SLUGNAMES"
        ;;

    push_updates)
        git push origin main:main main:ref
        while read slug; do
            echo "$slug"
            git push "${slug}" "${slug}-ref":ref "${slug}-main":main
        done < "$SLUGNAMES"
    ;;

    #"" | "help" | "-h")
    *)
        echo "subcommands:"
        echo "import_new_content:  sync new content from my repo to students' repo"
        echo "update_student_work: fetch from all the student remotes"
        echo "update_ref_branches: update students' ref branches to match our main ref branch"
        echo "merge_main_branches: merge our ref branche into students' main branch"
        echo "push_updates:        push everything up to github"
        ;;

esac
