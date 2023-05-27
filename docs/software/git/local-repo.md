# Local Repositories

## Theory

The local repository is stored on your computer. When you initialize a git project, a remote repository is created.

Once a local repository is created, your development environment will look like this:

![Image](../../assets/git/local-repo.png){ width="800" }

The working directory is simply the folder that your git project is created in. This is the base folder of your project, and contains all of your files. This is where you actually do work, and contains all of your code.

Your staging area contains all of the changes you intend to commit.

The local repository contains all of the git information for your development environment. Inside this are the refs. These hold information about commits and branches. The local repository also holds the objects. These include blobs, trees, and commits. We won't won't go into more detail here, but the objects are the actual data of git, containing things like contents of files from past commits.

## Further Reading

-   [Git Internals - Git Objects](https://git-scm.com/book/en/v2/Git-Internals-Git-Objects)
-   [Git Internals - Git References](https://git-scm.com/book/en/v2/Git-Internals-Git-References)
