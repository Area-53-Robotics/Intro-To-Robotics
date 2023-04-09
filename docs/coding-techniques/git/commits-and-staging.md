# Commits and Staging

## Adding Files

Git will only track files that you explicitly tell it to.

```sh
# Adds specific file
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

You can add all of your added files to a commit with the command:

```sh
git commit -m "My first commit"
```

This will create a commit with the message "My first commit".

> Note: Your commit names are important. They should describe the changes you made. If you notice that you can't summarize your changes in one scentence because you made too many changes, consider making multiple commits.

## .gitignore

Some files you don't want to be tracked by git. Files containing secrets, binaries, and compressed files are all in this category. As a general rule of thumb, files that don't have contents that can be read by humans shouldn't be tracked by git. If you read the file, and all you see is unreadable gibberish (code you don't understand doesn't count), don't stage it.

You can make file unstageable by adding them to your .gitignore. Create a file called .gitignore, and add the files and folders you want to ignore.

```sh
# .gitignore

bin/ # Ignores a folder
myfile.txt # Ignores a file
*.o # Ignores all files that end in .o
```
