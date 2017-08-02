#!/bin/bash

# https://gist.github.com/robwierzbowski/5430952/
# Create and push to a new github repo from the command line.  
# Grabs sensible defaults from the containing folder and `.gitconfig`.  
# Refinements welcome.

# Vars
CURRENTDIR=${PWD##*/}
echo "Enter the Directory path of your Source code"
read CURRENTDIR
echo "Into dir.."

if [ -d .git ]; then
  echo "This directory has already been initialized with git."
echo "1"
else
  git init
  if (( $? )); then
      echo "Unable to initialize your directory"
   echo 2
  fi
 fi
echo "Here are files in current directory"
ls -latr
#echo $CURRENTDIR
echo "login details"
git config --list | grep -i user.name
echo "enter git url"
git remote add origin https://github.com/devopsharish/learning_chef
 git add --all
 git commit -m " Test"
 git push -u origin master



