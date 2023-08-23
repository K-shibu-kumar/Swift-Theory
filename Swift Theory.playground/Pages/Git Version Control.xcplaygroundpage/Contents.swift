///# Git USing Terminal

///# Local
//git init    :- Initialized empty Git Repository
//git status  :- Check for committed or untracked files in directory
//git add  <file name>  :- Add a particular file to be staged
//git add .     :- Add multiple files at once to be staged
//git rm --cached  -r <File name>  :- To undo staging of a file
//git rm —cached  -r .   :- To undo staging of all files (-r stands for recursive)
//git commit -m “Message goes here”   :- Added files to version control to be staged
//git log   :- View all commits in detail
//git diff <File name>  :- View the changes made to files.
//git checkout <File Name>   :- Roll back in to the last version of the file

///# Remote
//git remote add origin <URL from Github> :-  Remote “origin” is created and ready to be pushed the commits
//git push -u origin master  :- pushing local repo to remote repo named “origin” and to  a default branch  named “master” (-u is to simply making the connection)
                            
///# GitIgnore
//touch .gitignore :- Creates a .gitignore file in the local working dir
//vim .gitignore  :- Open the file add the names of files to ignored to the remote
//( # Comments , *.txt certain file extensions to be ignored)
                            
///# GitClone
//cd to target dir
//git clone "URL from GitHub"

///# Branching ang Merging
///# Branching
//git branch "name of branch" :- New branch with all the files from main/master
//git branch :- checking the available branches and '*' shows current branch
//git checkout "branch name" :- switch to another branch
///*after making changes : perform git add and commit
///# Merging
//git checkout master :- switch to master
//git merge "name of branch which need to merged with master" :- merge the branch with master
//git push origin master -u  :- to push to repo
 

///# Branching and Merging in GItHub
///# Branching
//Create a repo : Public with readme.md
//Create a file in main
//Create a branch : add files or make changes in existing files
///# Merging
//Switch to main/master branch
//compare and pull request
//select main and the branch to be merged


