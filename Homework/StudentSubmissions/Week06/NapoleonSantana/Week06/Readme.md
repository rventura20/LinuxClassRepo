# Homework 6:

I expect the time requirement to be:
Problem 1: < 5 minutes if you paid attention
Problem 2: < 1 hr if you read the attached article, play with the code for a few minutes, and then just do what the article says.
Problem 3: < 1 hr

If you are confused it might take you 3-4 hours. If you find yourself 20 hours in and balding, ask for help, this is supposed to be a fun assignment! 

Make a pull request for the homework, see submission guidelines for details. 

## Problem 1
Compile, change ownership, change permissions, and run the execve_setuid program we looked at in class. All you need to do is repeat what we did in class. I just want to know 100% that you have made compiled and run a setuid program before. 
 
## Problem 2
Get the hangman game from the 12/ directory here: https://github.com/brandonprry/wicked_cool_shell_scripts_2e
Make the code work. It uses a tool "randomquote" on line 23. "randomquote" is available in the 8/ directory of that 
repository.
Add some signal handling to the bash script so that CTRL+C does not stop the process. 
We didn't cover bash signal handling in class Instead we covered signal handling with C. In bash it is even easier. Make 
sure to read this: https://www.linuxjournal.com/article/10815

Notice that this game depends on a file called long-words.txt. So far as I can tell the download link provided by the script
is dead. Just make your own file containing some words. Nothing vulgar or inappropriate, just 5 or so words, each on it's own
line.

## Problem 3
Get your wallet and your laptop! Create a $5 per month digital ocean debian server and connect to it over ssh.

!!!! Achtung !!!!
Debian. Not Fedora. Not Ubuntu. Not FreeBSD. Not CentOS. Debian!!!!!

!!!! Attention !!!!
Choose the $5 option unless for some reason you want to spend more! I'm running 3 websites, file storage, and a proxy server on my $5 instance. Do you need more?

We'll use this a few times throughout the semester. Your midterm relies on thi server. Also we'll be making websites so you'll host the site on the server.

In total it will cost you about 10-15 bucks and then you can cancel it. This will be linked to your credit card, so if you decide you don't want your own $5 cloud server anymore, at the end of the semester you can cancel it. You might just want to keep it though! For just a few bucks I have a cloud machine that I can connect to from any computer and do linux stuff, I store files there, and I have a few websites running on it. Not bad for a few dollars.

## Submission Guidelines
Due: Before 7:00 PM on October 16th. Fork and pull request the class repository. 
Include your files under Homework/StudentSubmissions/Week06/FirstnameLastname

Do the PR correctly or I'll reject it! I need the format to be precise to make sure that you don't ruin the repo.

Grading:
33% The setuid/setgid program can be run as an unprivileged user to do some privileged action.
33% Hangman works, and ignores CTRL + C.
34% You can ssh into a digital ocean machine.

Submission:

For credit upload three images to  Week6/YourName. Also add your hangman code for problem 2.

For image 1 I want you to run:

Image 1:
```
$date
$gcc execve_setuid.c -o example
$sudo chown XX:XX
$sudo chmod XXXX
$whoami
$./example
[output]
```

Image2:
```
$whoami
$ cat /usr/lib/games/long-words.txt
$./hangman
[play a little bit]
$CTRL+C
[Should see a message that CTL+C was ignored]
[play a little bit more]
```

See sample images for an example of a good submission.

Image3:
Screen shot showing you connect to a digital ocean server:

```
user@laptop$ curl ipinfo.io/ip
# outputs you laptop ip address
user@laptop$ ssh serverUserName@ServerIpAddress
serverUserName@ServerName$ curl ipinfo.io/ip
# outputs server ip address
serverUserName@ServerName$ exit
user@laptop$
```
