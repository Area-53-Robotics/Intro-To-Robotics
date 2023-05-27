# Remote Repositories

Remote repositories are they way that git enables collaboration between developers. Very commonly these remote repositories are hosted on Github, but it's possible to host your own as well, provided that you have your own server.

![Image](../../assets/git/distributed.png){ width="800" }

## Acquiring a Remote Repo

This can be done with clone. This will create a copy of that repository in a new directory on your computer. This only copies the code for the remote repository's current active branch, but it will create remote-tracking branches for the rest of the branches.

<!--TODO: image-->

## Interacting with a Remote Repository

You never interact with other remote repositories, the remote repo always acts as a middle man.

An important thing to remember is that a remote repo is not a direct mirror of the local ones. It will not automatically update as changes are made in local repositories. If you want to interact with the repo, you must do so manually and explicitly.

### Fetch

Fetching will only fetch the refs from the remote repository, not the objects. This gives your local repository all of the latest information on what commits and branches there are in the remote repository. This will not actually integrate these changes into your local repository, it will just make it aware of them.

<!--prettier-ignore-->
!!! note
    Fetches are completely non-destructive, and therefore will never change your working directory. It is always safe to fetch.

### Pull

A git pull actually performs two other git commands, a git fetch and a git merge. First it will fetch the latest refs from the remote repository, and then it will attempt to merge the specified branch into the local one.

<!--prettier-ignore-->
!!! note
    A pull will only attempt to integrate into the current branch, not any others.

![Image](../../assets/git/pull.png){ width="800" }

This merge works exactly like a normal merge. If the changes are not divergent, it will be resolved via fast-forward. In addition, if specified, a rebase can be used instead of a normal merge.

### Push

A push will update the remote repository's metadata with the local one and send the matching [objects](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects) along with it. If the local and remote repository conflict, the push will not succeed, and will throw an error. If this is the case, you will need to pull the changes from the remote repository to make the history match.

![Image](../../assets/git/push.png){ width="800" }

## Further Reading

-   [Distributed Git - Contributing to a Project](https://git-scm.com/book/en/v2/Distributed-Git-Contributing-to-a-Project)
