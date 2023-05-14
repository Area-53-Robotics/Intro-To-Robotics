# Branches

Branches are an exceptionally powerful tool, that can be used to develop features without endangering your main code. If you think of your commit history as a timeline, and your commits as points along that timeline, then a branch is a fork in that timeline. You start with an existing branch, usually called master.

```
o---o---o  master
	     \
		  X---Y---Z  my_branch
```

You can create a new branch based on your latest commit using:

```sh
# This branch will look identical to your existing master branch until you make changes
git branch my_branch # <-- branch name

# You can switch to this branch with
git chechout my_branch
```
