# Commits and Staging

## Adding Files

Git will only track files that you explicitly tell it to.

Adding files will stage them. If a file is staged, it will be tracked by git. Git will only commit staged files.

```sh
# Adds all files
git add .
# or you can add specific files
git add myfile.txt

git status # Will tell you what files are staged and unstaged.
```

## Removing Files

```sh
# This will not delete the file, it will only unstage it.
git rm --cached myfile.txt
# This will delete the file.
git rm -f myfile.txt
```

## Your First Commit

You can add all of your staged files to a commit with the command:

```sh
git commit -m "My first commit"
```

This will create a commit with the message "My first commit".

> Note: Your commit names are important. They should describe the changes you made. If you notice that you can't summarize your changes in one sentence because you made too many changes, consider making multiple commits.

## .gitignore

Some files you don't want to be tracked by git. Files containing secrets, binaries, and compressed files are all in this category. As a general rule of thumb, files that you wouldn't want other people to read, or that other people can't read you shouldn't track with git. For example, when your program compiles, it will automatically create a bunch of files. These files have nothing to do with the actual content of your code, and so they shouldn't be tracked. If you had a zip file, you wouldn't want to commit that either, or files containing API keys (although you probably won't have any of those in robotics).

You can make file unstageable by adding them to your .gitignore. Create a file called .gitignore, and add the files and folders you want to ignore.

```sh
# .gitignore

bin/ # Ignores a folder
myfile.txt # Ignores a file
*.o # Ignores all files that end in .o
```
