# Git

## What is Git

[Git](https://git-scm.com/video/what-is-git) is a [version control system](https://learn.microsoft.com/en-us/devops/develop/git/what-is-version-control) created by Linus Torvalds. It provides a large amount of benefits including:

-   a record of the history of your project
-   working with other developers
-   automated testing

Our organization uses Git along with GitHub to manage our code. We have a GitHub organization where we store all of our code. You can find this organization along with our repositories [here](https://github.com/Area-53-Robotics)

## Getting Started

To get started with using Git and GitHub you'll need to things:

1.  a GitHub account, which can be obtained from [here](https://github.com/).
2.  the git command line interface.

Some systems might already come with git installed, but if that is not the case it can be installed like so:

#### Windows

On windows systems you'll need to download it directly from [here](https://git-scm.com/download/win).

#### MacOS

On MacOS git can be installed either through XCode or through the [brew package manager](https://brew.sh/).

```sh
# XCode Package
xcode-select --install

# Brew
brew install git
```

#### Linux

On Linux you can follows [these](https://git-scm.com/download/linux) instructions.

### Configuring Git

Once you're set up you'll have to properly configure your local git installation.

Make **_sure_** that the email is the same as the one that you used for your GitHub account.

```sh
git config --global user.name "First Last"
git config --global user.email "user#domain.com"
```

You'll also have to set up authentication with GitHub. The preferred way to do this is with [SSH keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).

Alternatively, if you're using Vs Code you can [authenticate through that](https://code.visualstudio.com/docs/sourcecontrol/github#_getting-started-with-github-pull-requests-and-issues).

### Joining the Organization

Once you've configured git, and created a GitHub account, you can join our organization. DM one of our admins with your GitHub username and they'll invite you to the organization. By default you'll only be able to view your team's code for this season, as well as all of the code from past seasons. You will only be able to edit your team's code.

### Developing on a Repository

In order to edit the code on your computer, you'll need to clone it.

```sh
# This will work on any repository
git clone https://github.com/Area-53-Robotics/53E.git

# This will only work if you have SSH configured
git clone git@github.com:Area-53-Robotics/53E.git
```

In order to update that code with the latest changes in the remote repository you can do:

```sh
git pull --rebase
```

Specifying rebase makes it so that your changes are placed ahead in history from the new changes, making the history more linear and readable.

If you don't want to specify rebase every time you pull, you can change it in the config.

```sh
git config --global pull.rebase true
```

Once you are satisfied with your changes you can push them up to the remote repository like so.

```sh
git diff # Review your changes
git add . # Stage your changes
git commit -m "describe your changes here" # Add your changes to history
git push # push your changes with the remote repository
```

<!--prettier-ignore-->
!!! note
    Commits should be small and frequent. A good rule of thumb is keeping your changes to where they can be summarized by a single sentence. For example: "Fixed a typo" or "Added the ability to subtract". This makes history more clear and readable.

## Further Reading

-   [Git for Absolute Beginners](https://www.freecodecamp.org/news/an-introduction-to-git-for-absolute-beginners-86fa1d32ff71/)
