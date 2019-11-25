# Week 12 Homework

AWK is the best language you can learn. I'm sorry I wasn't in class to teach you
about it, but I've done the next best thing. I've recorded a youtube video about
AWK and it is here:

https://www.youtube.com/watch?v=_q6Uj4X_knc

You cannot leave our Linux class without knowing AWK! It's one of the coolest
languages out there. If you open your mac book in class and type an little awk
command you will be immediately praised as the smartest person the people around
you have ever met.

## The Assignment
Run all of the 20 commands in section 1.8 "useful one liners" from here:
https://ia802309.us.archive.org/25/items/pdfy-MgN0H1joIoDVoIC7/The_AWK_Programming_Language.pdf
against the data file "homework.ssv" I've given you in this repository. 

The reading assignment is only about 15 pages, and I've put a video on youtube
to accompany the assignment. In case you get bored reading you can just watch
the video.

## Important!
The homework.ssv file is semicolon delimited. That means the columns are
separated with semicolons, but all the files in the tutorial and video are
space-delimited. That just means you have to run the command instead of like
this:

```
awk 'pattern { action }' file
```

do it like this

```
awk -F";" 'pattern { action }' file
```

## Bonus points
Do the assignment. If everyone does it I'll count it for 200 pts instead of 100.
This will be my way of saying sorry I missed class.

## Submission guidelines
Due by December 1st 2019 at Midnight. 
Submit screenshots of yourself running each of the 20 commands. ( Fingers crossed you
won't submit 20 screenshots, reduce the number as much as possible ).

As always, get it done on time! Reach out with any problems you may have.
