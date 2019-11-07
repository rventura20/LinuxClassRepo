# Week 08 Homework

Modify your cron table such that every hour a cowsaying the current time is appended to the file ~/cowsayingTime.txt

```
date | cowsay >> ~/cowsayingTime.txt
``` 

Note what we saw in class. You'll probably need to specify the full path to `date` and the full path to `cowsay` in the command you enter in the crontab. Instead of `date`, for example, put `/path/to/date`, which you can find by typing `which date`.

As always, if you don't have `cowsay` on your machine, `apt install` it.

Submit:
* mycrontab.txt ( get this with crontab -l > `mycrontab.txt` )
* your cowsayingTime.txt file containing >= 5 hours of time stamps 

## Reference
I showed you a crontab and mentioned how to add lines to it. Here are a couple of good youtube references:
* https://www.youtube.com/watch?v=7MFMnsnfBJs
* https://www.linuxjournal.com/article/1189 

## Submission Guidelines

Submit all the indicated things on github via pull request. Put your content in StudentSubmissions/Week08/YourName.
Make sure you put it in the right directory! 
