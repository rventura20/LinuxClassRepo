# Week 11 Homework
This is a great assignment. A year from now when you, the Linux expert, are building linux from scratch and installing it on a brand new SSD from Amazon, you'll find that partitioning your disk is super easy! 

Your task is:

Add a disk to your digital ocean machine. Format it and add two partitions:
* one for swap space
* one for your home directory

then add swap space to your machine and move your home directory. Reboot your machine to show that the changes you made have survived a reboot.

Put the contents of your /etc/fstab in fstab.txt
Take a screenshot called "afterReboot.png" of your machine showing the following commands:
```
user@machine$ uptime
user@machine$ lsblk
# should show swap space
user@machine$ cat /etc/fstab
# should show the changes you made to make sure that your changes survived reboot. 
```

## Submission guidelines
Submit the following two files via pull request no later than Midnight of November 19th 2019. Place both files in `Homework/StudentSubmissions/Week11/YourName`.
