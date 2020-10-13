## Introduction 

This labNote aims to provide directions for creating a _git repository_ in the local computer, transferring it to _github_, and cloning a remote repository to create a .html report. Shortly, the following processs will be described:
  1. Creating a _git repository_ in your local shell.
  2. Connecting this local repository to _github_.
  3. Transferring the content of the local repository to _github_
  3. Describing how to clone a remote repository.
  4. Using a remote repository to make a .html report.
  
## Creating a _Git repository_

To create a _git repository_ in your local computer, go to the relevan directory in your computer and write `git init` to the terminal. 
You set up a repository. You can create the necessary files, for instance ReadMe.md, here. You need to make sure all the necessary files for the project are located under this directory/repository. 
Next, you type `git add` followed by the name of the files that need to be added to the new _git repository_.
After you add all the files, you type `git commit` to save these files in the relevant repository.
Once you complete the commit operation, terminal will ask you to add notes. You can add notes here about what you have done and exit the page with _CTRL X_ followed by _Y_ in zsh.

## Building Connections with _GitHub_

To share your local repository with other and colloborate in joint projects, you need to build a connection between your local repository and _github_.
First, you need to create an online account. 
Go to _repositories_ section in the main page and click on the green create button. Select create a new repository option and enter the relevant name and description information. Here, you can determine whether this repository will be public or private. Addıtıonally, it asks if you want to add a ReadMe.md file. ReadMe.md files are highly suggested  
to be created to give other researchers information about the past of the file and its current status. 

## Transferring Local Repository to _GitHub_

You created two repositories, one in the local computer and the other one is in _github_. We need to use `git remote add` and `git push` commands to create the connection between these repositories.
For instance, we use the following commands:

git remote add rep https://github.com/mervekeskin20/ScienciticComputation4socialScienceAssignment7 \
git push u- rep master

If the second command gives an error such as 'refspec master does not match any' when pushing the repository, this problem is caused by the emptiness of the repository and could be solved by creating the first commit in the repository. The folloiwing commands are used to push this repository.

```
touch initial
git add initial
git commit -m "initial commit"
git push -u rep master
```
