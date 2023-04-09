# Getting Started

There are many ways to use git. There are may ways to use git, including:

-   cli (command line interface)
-   Integrated VSCode support
-   Integrated CLion support
-   Github desktop
-   Lazygit

This guide will only cover the cli, because the other tools are based on it. If you know how to use the cli, you will know how to use the others.

## Installation

It's likely that the [official documentation](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) is more helpful.

### Windows

Download the official binary from [here](https://git-scm.com/download/win).

Or run:

```sh
choco install git # requires the chocolatey package manager
```

### Linux

```sh
# Fedora
sudo dnf install git-all

# Debian/Ubuntu
sudo apt install git-all

# Arch
sudo pacman -S git
```

If you use a different package manager, we trust you know what to do.

### MacOS

```sh
git --version # will prompt you to install
# or
brew install git # requires homebrew package manager
```

Verify that git is installed by running

```sh
git --version
```

in your terminal of choice.

## Your First Project

Make your first git project using:

```sh
git init # Make sure you run this in the correct folder

git status # Verify that the command worked
```
