# Pushing and Pulling

This is the main way you interact with other branches.

This includes remote branches (but we'll talk about those later)

```sh
git checkout master # We are now on the master branch
git pull my_branch # Get all of the changes from my_branch, and add them to master

git checkout my_branch
git push master # Adds all of the commits that master doesn't have to master
```

> Note: You cannot pull with uncommited changes, and push will ignore changes you have uncommited.

## Diverging Branches

When running these commands, it is highly likely that you will eventually see a message that looks like this:

```
hint: Pulling without specifying how to reconcile divergent branches is
hint: discouraged. You can squelch this message by running one of the following
hint: commands sometime before your next pull:
hint:
hint:   git config pull.rebase false  # merge (the default strategy)
hint:   git config pull.rebase true   # rebase
hint:   git config pull.ff only       # fast-forward only
hint:
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
```

It is likely that your branches don't perfectly line up, usually because master recieved a commit since the branch was made. Or, even more likely, someone else pushed to master while you were working. In this scenario you have two options, merging or rebasing.

```
o---o---o---A---B---C master
	     \
		  X---Y---Z  my_branch
```

### Rebasing

In this option, commits are added back in time. This is perfect if the difference between the branches is very small. If there are conflicts, you will have to fix them for every single differing commit. It means that history will be preserved, and no commits will be lost.

You can initiate a rebase by using:

```sh
git pull --rebase
git push --rebase
```

Rebasing will result in:

```
o---o---o---X---Y---Z---A---B---C master
	     \          /
          X---Y---Z  my_branch
```

### Merging

In this option, differing commits are squashed (this is the actual term for this) into a single commit. None of your changes will be lost, but the history won't be as clear. This is a good option if the amount of commits that you are pushing or pulling is very large, because you will only have to fix conflicts once.

You can merge using:

```sh
git pull --merge
git push --merge
```

Merging will result in:

```
o---o---o---A---B---C---D master
	     \             /
		  X---Y---Z -- my_branch
```

## Merge conflicts

These are the bane of any developer's existence. Usually merges/rebases are resolved automatically. However, sometimes you will recieve a merge conflict. This occurs when two commits that are being merged/rebased make changes to the same location on a file. This will require you to manually fix the conflicts. Running git status will show you which files need to be changed. You can accept the changes from the file on your branch using:

```sh
git checkout --ours <file name>
# Or accept the remote changes
git checkout --theirs <file name>
```

You can also accept every changes from the local branch using:

```sh
git merge --strategy-option ours
# Or accept the remote changes
git merge --strategy-option theirs
```

In case you want to fix the conflicts manually (you might want a combination of both changes), git status will tell you which files you need to change. When you edit those files you will find something like this:

```
<<<<<<< HEAD
Changes on the current branch
=======
conflicting changes
>>>>>>> conflicting_branch
```

Make the changes you want and delete the symbols, then add the changes.
If you are rebasing, run:

```sh
git rebase --continue
```

Or if you are merging, simply commit.
