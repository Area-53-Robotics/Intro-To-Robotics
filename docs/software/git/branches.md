# Branches

Branches allow you to create a fork in the timeline of your project.

![Image](../../assets/git/branch.png){ width="800" }

A common use of branches is to create new features. This allows work to be done on another branch without interfering with the main branch. This is useful if you have multiple developers working together, and you don't want to break each other's work. Branches are also a very common way to have different releases, each with their own version.

## Git Checkout

Git allows you to move between branches at will with the checkout command. Note that while making commits does not change your working directory, this will. Your code will be changed to the code in that branch.

<!--prettier-ignore-->
!!! warning
    You cannot change branches if your current uncommitted changes conflict with what is on the branch you are trying to switch to. If this happens, you can either commit your changes to your current branch, or or stash your changes. For more info, look [here](https://stackoverflow.com/questions/22053757/checkout-another-branch-when-there-are-uncommitted-changes-on-the-current-branch).
