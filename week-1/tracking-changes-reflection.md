How does tracking and adding changes make developers' lives easier?
Tracking and adding files is a way for developers to keep up with the changes made to any repo. 
What is a commit?
A commit is a save point for a repo. It's a method of version control that allows users to see different points of progress of a file's life. It allows the developer to compile a larger chunk of changes and save them all as one, rather than leafing through every menial change made to a file.
What are the best practices for commit messages?
To be descriptive and explicit, capitalizing the first letter, keeping it short, and using the present tense.
What does the HEAD^ argument mean?
HEAD^ is the last commit. It's a handy tool for reverting to a previous commit. 
What are the 3 stages of a git change and how do you move a file from one stage to the other?
The first stage of git is working. This is fluid and can always change. The second is once the the files have been added, or "staged", ready to be committed. The third is an actual commit, when the changes have been saved.
Write a handy cheatsheet of the commands you need to commit your changes.
git status, git add, git commit -m "message"
What is a pull request and how do you create and merge one?
A pull request is made from GitHub where you take a branch that's been pushed from a developer and pull it to GitHub's remote server using their simple set of pulling tools. This can be merged on GitHub as well to become a part of the master.
Why are pull requests preferred when working with teams?
Pull requests work much better with multiple people, because there is a centralized location that is adding branches to the master repo, rather than uncoordinated individuals pushing changes without an overarching organization.