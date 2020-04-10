# Week 12 Homework

AWK is the best language you can learn. I'm sorry I wasn't in class to teach you
about it, but I've done the next best thing. I've recorded a youtube video about
AWK and it is here:

https://www.youtube.com/watch?v=_q6Uj4X_knc

You cannot leave our Linux class without knowing AWK! It's one of the coolest
languages out there. Many Linux users aren't familiar with AWK, but you're in CS407 so 
you're going to learn it and know more than all of them! If you take the time to complete this assignment
you'll not only have a good grade, but you'll have another BAZOOKA in your toolbox to conquer problems
on the command line that your academic and professional peers may not have.

## The Assignment

You must create a semicolon separated file such as this one:

``` 
rectangle1;1;2
rectangle2;1,10
rect4;10,10
```

and use awk to print the following output:

```
area of rectangle1:    2
area of rectangle2:   10
area of rect4:       100
```

note that the columns are aligned with the first output column left-aligned and the second output column right aligned.


## Grading

### 90
You can produce the following output

```
area of rectangle1:    2
area of rectangle2:    10
area of rect4:         100
```

### 95
You can produce the following output

```
area of rectangle1:    2
area of rectangle2:   10
area of rect4:       100
```

### 100
A 100 along with lots of pride and self esteem comes if you can produce the following output

```
area of rectangle1:    2
area of rectangle2:   10
area of rect4:       100
TOTAL AREA:          112
```

I haven't tried to complete this assignment, but I'm sure that either the 90 or 95 grades are able to be done if you've watched
lecture and given it some careful thought, perhaps over a few days. The 100 part I know should be doable with a combination of BEGIN and END, but, as before, I haven't tried to do it. I have faith I could do it and so I think you smart people could be able to do it if you put your brains in action.

In any event I'm sure you can get a 90 or above, though I'm not sure which of the grades above are easiest to achieve. A 90+ is a fine grade.

## Submission guidelines

Due April 23rd by 11:59 via a pull request. Include a screenshot showing you running:
* cat rectData.ssv
* awk BLAH BLAH BLAH ( this is your homework )

and the awk program should produce the indicated output. The screenshot should be in Homework/Week12/StudentSubmission/Yourname and contain a single screenshot.

