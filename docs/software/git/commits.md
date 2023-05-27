# Commits

## Theory

When you commit you create a set point in the history of your local repository. Together, the commits form a timeline of your project. When you commit, changes get moved from staging into your local repository as a commit. Keep in mind that this does not change your working directory in any way.

Here is an example of a history with three commits:

![Image](../../assets/git/commits.png){ width="800" }

Every commit has a commit message associated with it. This should summarize the changes made in that commit. Commits also have a hash. This is a unique identifier that is automatically generated whenever a commit is made.

### .gitignore

Sometimes there are files that you don't want to be committed. This might be for a number of reasons. Files containing secrets, binaries, and compressed files are all in this category. As a general rule of thumb, files that don't have contents that can be read by humans shouldn't be tracked by git. If you read the file, and all you see is unreadable gibberish (code you don't understand doesn't count), don't stage it.

Git looks for a file called .gitignore in the root of your working directory. Any file name in this file cannot be staged. Here are the contents of an example .gitignore file:

```sh
# .gitignore
bin/ # Ignores a folder
myfile.txt # Ignores a file
*.o # Ignores all files that end in .o
```

## Examples

<!--prettier-ignore-start-->
=== "CLI"
    You can stage files with these commands:
    ```sh
    git add myfile.txt # Stage a specific file
    git add . # Stage all files

    git status # Will tell you what files are staged and unstaged.
    ```
    You can unstage files with these commands:
    ```sh
    # This will not delete the file, it will only unstage it.
    git rm --cached myfile.txt 
    # This will delete the file.
    git rm -f myfile.txt 
    ```

    You can make a commit with this command: 
    ```sh
    git commit -m "My first commit"


    ```

=== "VSCode"

    Commiting in VSCode can be done with the commit menu in the git tab. Here you can stage and unstage files, as well as make commits.

    ![Image](https://code.visualstudio.com/assets/docs/sourcecontrol/overview/stage-changes.png){ width="500" }

    If no files are staged, VSCode will stage everything.

<!--prettier-ignore-end-->

## Further Reading

-   [Git Commit](https://github.com/git-guides/git-commit)
