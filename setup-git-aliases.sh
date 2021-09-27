#!/bin/bash

# ALIAS - Lists Git aliases
git config --global alias.alias "!git config -l | grep alias | cut -c 7-"


# Config
git config --global alias.gconfig "config --global"


# Status
git config --global alias.s "status -sb"


# Checkout
git config --global alias.co "checkout"
git config --global alias.cob "checkout -b"
git config --global alias.com '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git checkout origin/$DEFAULT_BRANCH; \
}; f'
git config --global alias.cobm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git checkout -b $1 origin/$DEFAULT_BRANCH; \
}; f'
git config --global alias.cobu '!f() { \
    UPSTREAM=`git status -sb | cut -d \\. -f 4 | cut -d ' ' -f 1`; \
    git checkout -b $1 $UPSTREAM; \
}; f'
git config --global alias.cobo '!f() { \
    git checkout -b $1 origin/$1; \
}; f'


# Branch
git config --global alias.b "branch"
git config --global alias.bu "branch -u"
git config --global alias.bum '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git branch -u origin/$DEFAULT_BRANCH; \
}; f'
git config --global alias.buu '!f() { \
    CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`; \
    git branch -u origin/$CURRENT_BRANCH; \
}; f'
git config --global alias.bd "branch -D"
git config --global alias.br "branch -r"
git config --global alias.brd "branch -rd"
git config --global alias.ba "branch -a"
git config --global alias.bm "branch -m"
git config --global alias.bv "branch -v"
git config --global alias.bvv "branch -vv"


# Fetch
git config --global alias.f "fetch"
git config --global alias.fo "fetch origin"
git config --global alias.fm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git fetch origin $DEFAULT_BRANCH; \
}; f'
git config --global alias.fu '!f() { \
    UPSTREAM=`git status -sb | cut -d \\. -f 4 | cut -d " " -f 1`; \
    REMOTE=`echo ${UPSTREAM} | cut -d / -f 1`; \
    BRANCH=`echo ${UPSTREAM} | cut -d / -f 2-`; \
    git fetch $REMOTE $BRANCH; \
}; f'
git config --global alias.updatedefault "remote set-head origin -a"


# Add
git config --global alias.a "add"
git config --global alias.aa "add -A"


# Commit
git config --global alias.c "commit"
git config --global alias.ca "!git add -A && git commit"
git config --global alias.cm "commit -m"
git config --global alias.cam "!git add -A && git commit -m"
git config --global alias.fixup "commit --amend --no-edit"
git config --global alias.fixupall "!git add -A && git commit --amend --no-edit"
git config --global alias.amend "commit --amend"
git config --global alias.amendall "!git add -A && git commit --amend"


# Stash
git config --global alias.sl "stash list"
git config --global alias.ss "stash save"
git config --global alias.sp "stash pop"
git config --global alias.sa "stash apply"
git config --global alias.sd "stash drop"
git config --global alias.sshow "stash show -p"


# Cherry-Pick
git config --global alias.cp "cherry-pick"
git config --global alias.cpc "cherry-pick --continue"
git config --global alias.cpa "cherry-pick --abort"


# Remote
git config --global alias.rms "remote show"
git config --global alias.rmp "remote prune"
git config --global alias.rmpo "remote prune origin"

git config --global alias.rmsh "remote set-head"
git config --global alias.rmsho "remote set-head origin"


# Rebase
git config --global alias.rb "rebase"
git config --global alias.rbi "rebase -i"
git config --global alias.rbc "rebase --continue"
git config --global alias.rba "rebase --abort"
git config --global alias.rbs "rebase --skip"
git config --global alias.rbm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git rebase origin/$DEFAULT_BRANCH; \
}; f'


# Merge
git config --global alias.m "merge"
git config --global alias.mm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git merge origin/$DEFAULT_BRANCH; \
}; f'
git config --global alias.mc "merge --continue"
git config --global alias.ma "merge --abort"


# Mergetool
git config --global alias.mt "mergetool"


# Push
git config --global alias.pu "push"
git config --global alias.puf "push --force"
git config --global alias.puo "push origin"
git config --global alias.puof "push origin --force"


# Pull
git config --global alias.pm "pull --no-rebase"
git config --global alias.pmm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git pull --no-rebase origin $DEFAULT_BRANCH; \
}; f'
git config --global alias.pmo "pull --no-rebase origin"
git config --global alias.pr "pull --rebase"
git config --global alias.prm '!f() { \
    DEFAULT_BRANCH=`git symbolic-ref refs/remotes/origin/HEAD | sed "s@^refs/remotes/origin/@@"`; \
    git pull --rebase origin $DEFAULT_BRANCH; \
}; f'
git config --global alias.pro "pull --rebase origin"
git config --global alias.pru '!f() { \
    UPSTREAM=`git status -sb | cut -d \\. -f 4 | cut -d " " -f 1`; \
    REMOTE=`echo ${UPSTREAM} | cut -d / -f 1`; \
    BRANCH=`echo ${UPSTREAM} | cut -d / -f 2-`; \
    git pull --rebase $REMOTE $BRANCH; \
}; f'


# Log
git config --global alias.l "log"
git config --global alias.ls "log --pretty=format:%C(yellow)%h\\ %Creset%s\\ %Cgreen(%cr)\\ %C(cyan)[%cn]%Cred%d"
git config --global alias.ll "log --pretty=format:%C(yellow)%h\\ %Creset%s\\ %Cgreen(%cr)\\ %C(cyan)[%cn]%Cred%d --stat"
git config --global alias.lg "log --pretty=format:%C(yellow)%h\\ %Creset%s\\ %Cgreen(%cr)\\ %C(cyan)[%cn]%Cred%d%n --graph"


# Worktree
git config --global alias.wt "worktree"
git config --global alias.wta "worktree add"
git config --global alias.wtl "worktree list"


# RS - Reset (mixed)
# The opposite of 'git add'. Undoes commits and leaves the files unchanged and unstaged.
# Usage:
#   'git rs'          - Unstages any staged files
#   'git rs <number>' - Rolls back the HEAD ref <number> commits and leaves affected files unchanged and unstaged
git config --global alias.rs '!f() { if [ $# -eq 0 ]; then git reset; elif [[ $git config --global alias.1~ ^[0-9]+$ ]]; then git reset HEAD~$1; else git reset $1; fi }; f'

# RSS - Reset (soft)
# Undoes commits and leaves the files unchanged and staged for commit
# Usage:
#   'git rss <number>' - Rolls back the HEAD ref <number> commits and leaves affected files unchanged and staged
git config --global alias.rss '!f() { if [ $# -eq 0 ]; then echo "Usage: git rss <number>"; elif [[ $git config --global alias.1~ ^[0-9]+$ ]]; then git reset --soft HEAD~$1; else git reset --soft $1; fi }; f'

# RSH - Reset (hard)
# Undoes commits and resets files to how they were before the commits
# Usage:
#   'git rsh'          - Discards local changes
#   'git rsh <number>' - Discards local changes and rolls back the HEAD ref <number> commits
git config --global alias.rsh '!f() { if [ $# -eq 0 ]; then git reset --hard; elif [[ $git config --global alias.1~ ^[0-9]+$ ]]; then git reset --hard HEAD~$1; else git reset --hard $1; fi }; f'


# DT - Directory Diff Tool
# Performs a directory diff in configured diff tool
# Usage:
#   'git dt'          - Directory diffs the local uncommitted changes in configured diff tool
#   'git dt <number>' - Directory diffs the changes of the last <number> commits (excludes local uncommitted changes)
git config --global alias.dt '!f() { \
    if [ $# -eq 0 ]; then \
        git difftool --dir-diff; \
    else git difftool --dir-diff HEAD~$1 HEAD; \
    fi \
}; f'


# CF - Changed Files
# Lists the files that have changed
# Usage:
#   'git cf'          - Lists the uncommitted, tracked files that have changed
#   'git cf <number>' - Lists the files changed in the last <number> commits
git config --global alias.cf '!f() { \
    if [ $# -eq 0 ]; then \
        git diff --ignore-space-at-eol --color-words --name-only; \
    else git diff --ignore-space-at-eol --color-words --name-only HEAD~$1 HEAD; \
    fi \
}; f'
