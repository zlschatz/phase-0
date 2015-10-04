#Tracking Changes Reflection Q&A#
How does tracking and adding changes make developers' lives easier?
  Tracking and adding changes helps for future revisions. If a bug is accidentally introduced to code, developers are able to pinpoint where and when the bug was added. This can be used for a variety of reasons, including creative direction and redesign as well.
What is a commit?
  A commit is a saving point for git, similar to a checkpoint. If need be, developers can refer back to previous commits and see how the code has been manipulated over time.
What are the best practices for commit messages?
  Commit early and often!
What does the HEAD^ argument mean?
  HEAD is in reference to the commit you are currently working within. HEAD^ is the previous commit, essentially two commits prior to your current state.
What are the 3 stages of a git change and how do you move a file from one stage to the other?
  The three stages are working, staged and commit. Working is the directory where you modify files. Staged is tracking while you work on changing code - everything prior to the next commit. Finally, commit is the save point of all changes you made from the last commit.
Write a handy cheatsheet of the commands you need to commit your changes?
  - git status
  - git commit
  - git commit -v
  - git log
What is a pull request and how do you create and merge one?
  A pull request is the action of posting changes made to any given code within git. By sending a pull request, you are allowing others to see the changes. You can make a pull request through git and also through Github.
Why are pull requests preferred when working with teams?
  Pull requests give a heads up to teammates that new commits are coming. Others will then have the chance to follow up with commits of their own.