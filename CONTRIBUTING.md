# Contributing

1. Install the prerequisites

-   [VSCode](https://code.visualstudio.com/)
-   [python](https://www.python.org/downloads/)
-   [git](https://git-scm.com/downloads)

You can use any editor besides VSCode, but that's the one we recommend.

2. Clone this repository, either with the git CLI, or with VSCode.

```sh
git clone https://github.com/Area-53-Robotics/Programming-Guide.git
```

3. Install the dependencies.

```sh
pip install -r Requirements.txt
```

4. Make your changes. We use a tool called MkDocs to generate our documentation from markdown files. We also use the MkDocs Material theme to get some extra formatting options. If this is your first time, have a look through the links below:

-   [Markdown tutorial](https://www.markdownguide.org/getting-started)
-   [MkDocs](https://www.mkdocs.org/)
-   [MkDocs Material](https://squidfunk.github.io/mkdocs-material/)

The documentation itself is in the docs folder, and settings for MkDocs are in the mkdocs.yml file.

5. Test your changes.

```sh
mkdocs serve
```

This runs the website locally, at [http://127.0.0.1:8000/]().

6. Once you're happy with the changes you've made, commit and push.

```sh
git pull
git commit -aM "Message describing your changes"
git push
```
