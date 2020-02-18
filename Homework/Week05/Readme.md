# Week 05 Homework

In this assignment you will test your knowledge of adding users and modifying permissions.

## Requirements

* Add the user "melvyn" to a digital ocean machine.
* Add my ssh public key to your machine so that I can access it.
* Add a user account for yourself to your machine.
* Put a file 'modifyme.txt' in /home/yourname that I have permission to modify.

## Don't get hacked
* ensure that password authentication is off for ssh! If you leave it on you are at risk of being hacked!!!!
* DID YOU HEAR WHAT I JUST SAID??? TURN OFF PASSWORD AUTHENTICATION ON YOUR SERVER.
* Heres how: https://www.linuxbabe.com/linux-server/setup-passwordless-ssh-login
* See the section under "Disabling Password Authentication". Note that she uses nano to edit files - we use vim. Don't use nano, use vim.

Your machines are only $5./month, so even if yu get hacked you won't run up a large bill, your machine will just become very slow and you can kill it and create a new one. Still, it's better to not be hacked than to be hacked.

## Test your solution
Make sure if you log in as melvyn (e.g. root@machine$ su - melvyn ), make sure that you can modify the file /home/yourname/modifyme.txt
Make sure you test your solution.

## Submission guideline
Submit a PR containing your ip address ( call the file myip.txt ) and screenshots of the output of:
* cat /home/melvyn/.ssh/authorized_keys
* ls -l /home/yourname
* cat /etc/ssh/sshd_config | grep Password
* history | grep -i ssh

I will attempt to ssh in a little after midnight on February 25th like ssh melvyn@youripaddress and I'll attempt to modify /home/yourname/modifyme.txt

If I can do this, 100 points.

## Result
You have created a user, added a public ssh key, and changed permissions on a file correctly!

