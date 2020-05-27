# Understanding stdin, stdout, stderr

## Part 1 - Demonstrate usage of the 1> 1>> 2> and 2>> with grep
Redirect the output of grep using
* 1> 
* 2>
* 1>>
* 2>>

Clearly demonstrate that you understand the differences between these four. In lecture I will have done this exercise with wc. Note that to get 2> and 2>> to output anything you'll need to do something wrong so grep will throw and error message to stderr.


## Part 2 - Writing your own code to use stdin, stdout, stderr

Compile and run the attached Java program. The first time you run it do
 
```
root@server$ java StdinStdoutStderr.java
root@server$ java StdinStdoutStderr
Pass a value to stdin . . .
Hello<ENTER>
You entered : Hello
This is an error message
```
Then run it like this:

```
root@server$ cat input.txt
Hello
root@server$ java StdinStdoutStderr < input.txt 1> stdout.log 2> stderr.log
root@server$ cat stdout.log
Pass a value to stdin . . .
You entered : Hello
root@server$ cat stderr.log
This is an error message
```

Now you know how to use stdin, stdout, stderr with linux tools. Furthermore, you know how to use stdin, stdout and stderr with your own code. 

## Submission Guidelines
Submit supporting screenshots for all your work no later than 11:59PM of June 1st 2020.
