# Midterm!

March 18th 2020. See the Code in this directory.

![examInAction](Images/examInAction.png)

## Part 1 - Do Over Spring Break
To see the exam in action, type:

```
bash exam.sh
```

and answer the questions. 

You will see a file YourName/examQuestions.sh

The file contains 4 functions, `question1()`, `question2()`, `question3()` and
`run_your_questions()`. Using the file MelvynDrag/examQuestions.sh as a
template, write three multiple choice questions that have to do with Linux. If
the user enters the correct answer you should echo "right" into the
$ANSWER\_FILE. If the user enters a wrong answer you should echo "wrong". If the
user enters something invalid, you should ask the user for correct input.

*All you have to do is modify the three questions!* Don't do anything else or
you might break this script that I've carefully put together.


**You must make a PR on this repo containing your three exam questions by March
16th at Midnight**. Your code must work! This is time sensitive, and the whole
class needs you to make these good questions on time so I have a few days to
polish it and work out any kinks before giving the exam on the 18th.

### Protip 
To make your testing faster you can comment out the irrelevant source and run\_students\_questions
lines in the run\_exam function such that only your questions are run. e.g. if
your name is suley, change the code so that onlyyour questions are run.

```
run_exam(){
	// source Melvy....
	//run_melvyns_questions
	// source Juli....
	//run_julians_questions
	source sule....
	run_suleys_questions
	// source xyz....
	//run_xyzs_questions
	//....
}
```

make sure to uncomment those lines before making a PR though.

## Part 2 
Come to class and complete the exam you and your peers created in under XYZ
minutes, probably 15 minutes at the end of class. 

## Grading
50% for making good exam questions
50% of your grade will be from your score on the test

## Example Grades:
* You don't do the pull requests to make code, or your code is junk you clearly
  spent 3 minutes on ( 0 pts ) + You get a 100 on the exam ( 100 * 0.50 = 50pts
  ) = 50 on the exam
* You make 3 cute little exam questions, different from the questions your
  friends made ( 50pts ) and then you get a 50 on the exam when you take it (
  50 * 0.50 = 25 pts ) = 75 on the exam
* You make 3 interesting questions, submit a proper pull request, and then
  answer all of the exam questions right = 100 on the exam.

## Should I Withdraw?
We're doing the midterm a bit late because of spring break and usually this exam
is used to help decide whether you withdraw from class or not. 
I'm showing you exactly what your exam will be weeks in advance.
The coming lectures will involve spending a few hours a week configuing servers
to do various task - this isn't difficult but is somewhat time consuming. I've
given you the grading criteria in the syllabus. So there won't be any surprises
from my end.
