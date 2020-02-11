# Week 04 Homework

Make a PR on the class repo with file LinuxClassRepo/Homework/Week04/YourName/Readme.md.

Readme.md should say:

"My name is X and I'm learning Linux because Y"

This is due by Sunday, February 16th.

Then by Tuesday, February 18th you must resync your fork with my repo. Send a screenshot of your fork containing all the homework assignmnets from your friends.

WATCH THIS VIDEO
https://www.youtube.com/watch?v=wlR5gYd6um0

and GIVE screenshots of what you've learned.



1. Create a new user named 'Grifflesnoots' on your machine
2. Verify that Grifflesnoots cannot install software using `sudo apt-get install XX`
3. Verify that YOU can install software using `sudo apt-get install XX`
(2 + 3 : you choose what XX is. Find out a name of a software package and use that )
4. Create another user called 'Mimi'
5. Put 'Grifflesnoots' and 'Mimi' in a group called 'Bonkers'
6. Change the permission on a file such that both 'Grifflesnoots' and 'Mimi' can `cat` the file, but you cannot.
7. Modify the 'Grifflesnoots' account such that whenever he tries to use 'cp' it deletes everything in `/home/Grifflesnoots/Desktop`. This is a mean thing to do.
8. On debian/ubuntu, what is the difference between .bashrc / .bash\_profile ? Illustrate why you would use one and not the other via some example. Sometimes the .bashrc file makes stuff happen that won't happen based on .bash\_profile. Other times the .bash\_profile file makes stuff happen while .bashrc won't be used.

## Submission guidelines:
1. Screenshot showing how you created the user
2. Screenshot verifying 'Grifflesnoots' cannot install software
3. Screenshot indicating that you can install software with your acct.
4. Screenshot showing the creation of 'Mimi'
5. Screenshot showing creation of group and adding of users.
6. Screenshot showing the changing of permissions and illustrating who can / can't cat the file
7. Screenshot of how you modified the Grifflesnoots account to do the thing. Show the mean thing in action.
8. Screenshot of `cat Explanation.txt` , `cat .bashrc` and `cat .bash_profile` showing what you did to the files. Screenshot showing how your mods caused something or other to happen. I want to see that you understand the difference between these two files.


Due Wed. October 2nd at Midnight via blackboard.
