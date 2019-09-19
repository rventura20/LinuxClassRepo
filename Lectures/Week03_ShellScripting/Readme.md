# Week 03 Lecture

This week we will learn a few more command line tools.

Schedule:
* Pattern Matching
* 7:00 - 7:15 Grep
* 7:15 - 7:30 Loops
* 7:30 - 7:40 Exercises
* 7:40 - 7:55 More if
* 7:55 - 8:00 Exercises
* 8:00 - 8:05 Break
* 8:05 - 8:40 Users + Groups
* 8:40 - 8:50 Exercises
* 8:40 - 9:00 Start permissions
* 9:00 - 9:05 Break
* 9:05 - 9:40 Permissions. chmod, chown, chgrp 
* 7:20 - 7:23 Miscellany [ if time ]
* 7:23 - 7:40 Arrays [ if time ]
* 9:40 - 9:45 Homework + whatever else needs discussing.

## Pattern matching in bash 
No we get into pattern matching in linux. A common way to match patterns in Linux is to 
use * when using bash. Lets make a directory called dir, and put a bunch of files in it. 
Lets name them:

```
$ mkdir dir
$ cd dir
$ touch cow coffee core care cape apple 
$ ls
$ ls c?re
$ ls c*
$ ls ca?e
$ ls ca[rb]e
$ ls ca[rp]e
```

You can use these wild cards in the terminal. So, for example, if you want to get the number of lines in all of the files in your current directory you could

```
cat * | wc -l
```


## [ 7:00 - 7:20 ] Grep


Now lets look at some more advanced pattern matching used in Linux via the grep command. 
Grep stands for Global regular expression print, it uses regular expressions to search for strings.
Now, grep is immensely useful, as we already saw last week. Last week we typed

```
history | grep wget
```

to look through our messy bash history to find exactly the command of interest to us, to see what files we downloaded in the past and to potentially download them again.

But there is an old Linux saying about regular expressions. "You have to solve a problem and you decide to use a regular expression. Now you have two problems."

https://opensourceforu.com/2012/06/beginners-guide-gnu-grep-basics/

A poem I like:
https://www.cc.gatech.edu/~spencer/poems/woods.txt

You can wget the poem

We are going to cover a bunch of grep options to pick apart this poem.

1. -i -> grep -i HARNESS woods.txt
2. -w -> grep -w arness; grep -wi Harness 
3. -v -> grep -v arness # inverse grep
4. -r -> mkdir -p a/b; mv woods.txt a/b; grep -r arness *
5. -n -> grep -rn arness *
6. grep can match lines after + including pattern `grep -A1 arness woods.txt `
7. grep can match lines before and including pattern  `grep -B1 arness woods.txt`
8. grep can match lines around pattern `grep -C3 arness woods.txt`
7. -l -> grep -l arness * # list files containing pattern
    > remember if we see any irrelevant error messages from grep, we can redirect them to the ether.
    ```
     grep -l arness * 2> /dev/null
    ```

    e.g.
    ```
    $mkdir dir
    $grep -l arness *
    grep: dir: Is a directory
    woods.txt
    ```
    
    BUT
    
    ```
    $grep -l arness * 2>/dev/null
    lecture.txt
    woods.txt
    ```
## Exercises

Use the above patterns on the file `hamletSolilquy.txt`. See what patterns you can extract.

## Grep and Regexes!

Ah, but we have yet to get to regular expressions!

Regular expressions are for pattern matching.

https://www.gnu.org/software/grep/manual/html_node/Basic-vs-Extended.html

> In basic regular expressions the meta-characters ‘?’, ‘+’, ‘{’, ‘|’, ‘(’, and ‘)’ lose their special meaning; instead use the backslashed versions ‘\?’, ‘\+’, ‘\{’, ‘\|’, ‘\(’, and ‘\)’.

The period (.) matches any single character.
? means that the preceding item is optional, and if found, will be matched at the most, once.
* means that the preceding item will be matched zero or more times.
+ means the preceding item will be matched one or more times.
{n} means the preceding item is matched exactly n times, while {n,} means the item is matched n or more times. {n,m} means that the preceding item is matched at least n times, but not more than m times. {,m} means that the preceding item is matched, at the most, m times.

That's it! So, given the file a.txt ( see this directory )

We can do the following
```
$ grep "a" a.txt # Find lines with an a
$ grep "a\?" a.txt # find lines with an optional a.
$ grep "a?" a.txt # find lines containing a?
$ grep "a+" a.txt # find lines with 1 or more "a"s
$ grep "a$" a.txt # find lines that end with a
$ grep "+" a.txt # find lines with a +
$ grep "[0-9]$" a.txt # find lines that end with a number
$ grep "^[a-zA-Z]$" a.txt # find lines with one letter.
```

Some more syntax:
1. ^ (Caret)   =   match expression at the start of a line, as in ^A.
2. $ (Question)    =   match expression at the end of a line, as in A$.
3. \ (Back Slash)  =   turn off the special meaning of the next character, as in \^.
4. [ ] (Brackets)  =   match any one of the enclosed characters, as in [aeiou]. Use Hyphen "-" for a range, as in [0-9].
5. [^ ]    =   match any one character except those enclosed in [ ], as in [^0-9].
6. . (Period)  =   match a single character of any value, except end of line.
7. * (Asterisk)    =   match zero or more of the preceding character or expression.
8. \{x,y\} =   match x to y occurrences of the preceding.
9. \{x\}   =   match exactly x occurrences of the preceding.
10. \{x,\}  =   match x or more occurrences of the preceding.

## Exercise
Change a.txt and change some of the grep patterns and verify that they work as expected.



## [ 7:20 - 7:23 ] Miscellany
A couple more useful commands:
* date
* watch
* alias
* another vim tip

### watch \& date
```
melvyn@thinkpad$ watch -n1 date
```
### alias

You use the alias command to change the names of system commands, implement system commands, etc. 

For example

```
touch filea
mv filea fileb
move fileb filec
# error
alias move=mv
move fileb filec
# now fileb is called filec
```

### .bashrc, /etc/profile.rc

There are many bash profile configuration files on your machine we need to mention now.

These files save custom system configurations. There are several of these files on you system, and the availability of these files may vary from system to system. We'll focus on the .bashrc file, which will work for 99% of your usage needs.

If you change a user's bashrc file, you'll be able to change the system configuration for that user. We can alias "mv" to "move" so that it persists every time we log on to our system.

Open a new subshell after aliasing move as you did above and try it again. Notice that the alias hasn't persisted to the new subshell - you can't use the alias, the system doesnt know about it.

```
alias move=mv
touch a
move a b
# works
bash
move b a
# error
```

```
# append 'alias move=mv' to the end of the bashrc file.
```
## Exercise

Follow steps carefully!!

### Step 1
Add this line to your .bashrc file:

`alias rm="echo 'I refuse to delete: '"` 

### Step 2
```
$touch b.txt
$ls
# b.txt is there
$rm b.txt
$ls
# b.txt is not there
$ source ~/.bashrc
$ touch b.txt
$ rm b.txt
I refuse to delete: b.txt
$ ls
# b.txt is there still
```

### Step 3
Remove the line from .bashrc

### Step 4
```
$ rm b.txt
I refuse to delete b.txt
$ source ~/.bashrc
$ rm b.txt
I refuse to delete b.txt
$ bash
$ rm b.txt
$ ls
# b is gone
```

### Step 5
quick class discussion

### vim pro-tip

another vim tip is that you can go to the bottom of a file with 
shift+g. top is gg.

The rm command is a particularly dangerous command on your system, as we have discussed before. Whereas windows has a "trash can" when you delete a file, Linux does not. When you rm a file, it is gone forever - there are some hail mary ways to possibly, maybe, pleasepleaseplease save your rm-ed files, but generally speaking, if you rm a file it is gone for forever. Your homework deals with using your bashrc and an alias to make rm safer.


## [ 7:23 - 7:40 ] Arrays
This article starts out by saying:
"the intent of this article is to avoid having to RTFM", it's a great read!
https://medium.com/@robaboukhalil/the-weird-wondrous-world-of-bash-arrays-a86e5adf2c69

What's an array? It's a container of values. There's a bunch of uses for this! It's a list of values!
There are many data structures you can use for the values you are manipulating in your program, an array is just one container for holding them. 
You know there are priority queues, hash maps, a whole bunch of binary trees, etc., etc., to learn about these you need to take an algorithms class, or read an algorithms book.

An array is something like 

students=["omar", "Elizabeth", "Mackenzie" . . . ]

All languages that I know use arrays. Maybe there is a language out there that doesn't support arrays, but I don't know of it yet.

The array syntax in bash is 

```
arr=(1 2 3 4)
```

you can put strings and numbers in there like

```
arr=(1 2 3 "hello")
```

In bash to see variable contents you use the `$`. For example, if you say

```
a=1
echo $a
```

You can also wrap the variable with curly braces like this

```
b=1
echo ${b}
```

A time when you would use this curly brace syntax is to add extra characters to the output of a variable. For example:

```
z="cat"
echo $z
echo $zs
#error
echo ${z}s
```

Without the curly brace in this situation, bash thinks the variable is called "zs"

Bash variables do require the curly braces, however. I'll repeat now that I don't love the bash syntax, but bash is super useful, and it's everywhere, so we all have to know about it. Kind of like javascript.

```
arr=(1 2 3)
echo ${arr[0]}
# prints 1
echo ${arr[1]}
# 2
echo ${arr[2]}
# 3
```

If you omit the curly brace, like this:

```
echo $a[0]
# 1[0]
```

You see bash treats the "[0]" as a string. We won't go into the low level explanation of why this happens, but it does and that's just the way bash works. So you need the curly brace. Also, notice you won't get 'out-of-bounds' exceptions or crashes due to accessing elements that are outside the bounds of the array.

```
arr=(1 2)
echo ${arr[5]}
# nothing
```

it is what it is. Notice that bash uses zero indexed arrays. For all the yuckiness of bash array syntax, at least it uses zero indexing. And it's not that yucky either, is it? Just remember to use the curly braces!

How to dump the array and see the contents? This is another important thing you might want to do!

```
arr=(1 2 3)
echo ${arr[@]}
```

So the ampersand is used for dumping all the array contents.

Now let's get really funky for a second - bash array elements don't need to be sequentially indexed!!

Look at this example:

```
array[0]=10
array[4]=4
echo ${array[@]}
# 10 4

echo ${array[1]}
#nothing
```

Depending on your familiarity with other languages - but for this you can probably just use your intuition - this is really weird! Bash arrays are zero indexed. So you would expect the array to start with element 0, then there's element 1, then 2, etc.. But not with bash. You can have an array containing elements 0, then 4. Or you can make an array like this:

```
array2[10]=1
array2[12]=1
array2[100]=2
echo ${array2[@]}
```

We'll put arrays on the back burner for a second while we look into another topic.


## [ 7:40 - 8:00 ] Loops

### for loops

For loops are a common construct in many programming languages! C, Java, Python, Ruby, Javascript etc. all use this construct, so you've probably seen it before. Bash has it too.

A common use case of the for loop is when you want to loop over something a predetermined number of times. You'll say "for iteration = 1 to 100 do a thing. In bash to write this you say:

```
for i in $(seq 1 10)
do
    echo $i
done
```

type that a few times to make sure you understand it. ( seq is another command line tool to generate a sequence of numbers )

You also might want to loop over an array:


```
array=(1 2 3)
for i in ${array[@]}
do
echo $i
done
```

You might want to loop over an array by index, too! Now if you don't know why you would want to do this yet, don't worry about it, I'm going to show you the syntax anyway, and maybe you'll thank me sometie 10 years from now. Think about what I said about myself and python dictionaries.

Look at our previous array

```
array=(1 2 3)
for i in ${!array[@]}
do
echo $i
done
```

The exclamation point tells the loop to print out the array index instead of the array value. Notice that this prints out 0 1 2 - these are the indices of the array, because bash is zero indexed.

But, remember that bash arrays are strange and don't require sequential indexing.

```
arr[10]=1
arr[15]=2
for i in ${!arr[@]}
do
echo $i
done
# 10 15
```

# Populating arrays ( Can omit in class. Come back if time. )

Just a quick note about populating arrays

```
arr[1]=10
arr[20]=11
empty=()

for i in ${!arr[@]}
do
empty+=${arr[$i]}
done
#10 11
```

### while loops

There are also while loops in bash. Many programming languages support while loops, the same thing I said about for loops. A while loop is a loop that will run forever until a specified condition is met. 

while ( alive ) {
    eat
    sleep
    etc.
}


```
i=0
while [ $i -lt 3 ]
do
echo $i
i=$[$i+1]
done
# 0 1 2
```

Another usage of test/while:
https://unix.stackexchange.com/questions/128204/what-does-while-test-gt-0-do

I increment the variable i in this loop, but this isn't of too much interest to us at this moment. In the notes I have a link that explains the multitude of ways to increment a variable in bash. It's not worth it to us right now to spend a half hour discussing the ins and outs, pros and cons, etc. The important message here is that bash, like many other languages supports a loop called a while loop.

https://askubuntu.com/questions/385528/how-to-increment-a-variable-in-bash

http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_02.html

## [ 8:00 - 8:05 ] Break

## [ 8:05 - 8:25 ] More if

### [ ] vs [[ ]] vs test

There are at least three ways to write ifs to check for conditions in bash.

You can write 

```
if [ 1 -eq 1 ]
then 
    echo "true"
else
    echo "false"
fi
```

You can also write

```
if test 1 -eq 1
then 
    echo "true"
else
    echo "false"
fi
```

The previous two are standard sh commands. The [[ ]] construct is a bash extension. It permits you to do more than the [] and test constructs allow, but it's not portable. 

One thing it can do is match regular expressions to strings.

```
$ var=aaab
$ if [[ $var == *ab ]]; then echo "match"; fi
match
```

but without the extra bracket:

```
$ var=aaab
$ if [ $var == *ab ]; then echo "match"; fi
$
$ #no match
```

More interesting uses of if:
* https://unix.stackexchange.com/questions/306111/what-is-the-difference-between-the-bash-operators-vs-vs-vs
* https://www.tldp.org/LDP/abs/html/testconstructs.html
* https://wiki.bash-hackers.org/commands/classictest


### Exercises

1. Look at the additional 'if/test' flags here: https://www.tldp.org/LDP/abs/html/fto.html
   Write some code using these operators.

## [ 8:25 - 9:00 ] Users + Groups

Linux/Unix is a multiuser operating system. This may not seem revolutionary, but when Unix came out the concept of a multiuser machine was a big deal. Windows is also multiuser and macs run a verion of BSD ( like linux ) so this may not impress you. I'm going to show you how to add/remove and manage users now.

There is even discussion in modern operating systems of being single user! https://discuss.haiku-os.org/t/suggestion-we-remain-single-user-read-on/2031 Look at the cook haiku os!

You have already seen that when logged into a machine you login as a user - `whoami` will tell you your username. You have a home directory for storing your personal files at `/home/$(whoami)`. Users can be added, removed, and modified in your system.

### Adding Users
You add users with the `adduser` command. Try it to add a user to your machine!

```
user@machine$ sudo adduser newusername
# Then answer the following questions.
# The only two essential questions are the password questions, you can just hit <enter> to go through the rest.
```

To see that the user created, look under `/home`. You will now have a home directory for this user.

```
user@machine$ ls /home
you thenewuseryouadded
```

You don't have permission to touch edit this user's files. The permissions you have depends on the way your system is configured! For example, on
this system you can look in the user's home directory.

```
user@machine$ touch /home/thenewuseryouadded/file.txt
#error
```

but

```
user@machine$ ls /home/thenewuseryouadded
#No error message
```

And look what vim says if you try to :wq a file there:

```
user@machine$ vim /home/thenewuseryouadded/file.txt
#no problem. Now add some text and try to :wq. You will see
# something to the effect of "readonly is set"
# exit with :q!
```

To switch to using the user you created, you can user the 'substitute user' command `su`.

```
user@machine$ sudo su - thenewuseryouadded
thenewuseryouadded@machine$ whoami
thenewuseryouadded
thenewuseryouadded@machine$ exit
user@machine$
```

### Deleting Users

To delete a user you use the deluser command. This can only be run as a superuser. 

```
user@machine$ sudo deluser thenewuseryouadded
```

You may want to remove their home directory as well in one fell swoop. If you run the command above, you'll have to 

```
user@machine$ sudo rm -r /home/thenewuseryouadded
```

To do everything at once:

```
user@machine$ sudo deluser --remove-home thenewuseryouadded
```

There are other options for deluser, you can see them all with `man deluser`.

### The root user. sudo

There is a special user in Linux/Unix called root / the superuser. The superuser is all powerful on the machine and can do anything he wants. You can delete whatever files you want, install software, modify system configuration settings, tamper with the operating system - anything. As such, it is important to limit access to this user profile. If you are a sysadmin at a company you will have root access to the company machines. Other employees typically do not, to limit the chances that non professionals will ruin the software on the machine. For example, go on the internet on these njcu machine and try to download and install a program. It will ask for administrator access and prohibit you from installing software - it is the same on Linux.

There are a few ways to gain root access to your machine.

You can run:

1. ` sudo su -` to change your user to root.
2. You can run an individual command with the `sudo` prefix. e.g. `sudo apt-get install somesoftware`.

Not everyone is granted root access. Log in to the user account of the new user your created.

```
user@machine$ sudo su - thenewuseryouadded
thenewuseryouadded@machine$ sudo apt-get install software
#Asks for password
#You enter password
thenewuseryouadded is not in the sudoers file. This incident will be reported.
```

Whereas you do not get this error with the user given to you by default on the cloud machine. The new user is not a privileged user.

There are several ways to make a user a privileged user. One way is to run the following command from the account of a privileged user:

```
user@machine$ sudo adduser thenewuseryouadded sudo
```

This adds the new user to the sudo group. More about groups later.

### Changing passwords

You can change a user's password. To change your own password, run `passwd` and follow the prompts.

To change any user's password, type `passwd USER` from a privileged setting. Then follow the prompts.

## Groups
Users can be binned together into groups to allow common security measures, privileges, etc. to be applied to all the users in a particular group.

### Adding Groups

Create a group

```
user@machine$ sudo groupadd njcu
```

To verify that the group was added, lets count the available groups on our system before and after the add.

```
user@machine$ sudo getent group | wc -l
N
user@machine$ sudo groupadd njcu2
user@machine$ sudo getent group | wc -l
N+1
```

### Deleting Groups

Just as easy as removing a user.

```
user@machine$ sudo groupdel njcu
```

### Adding a user to a group

```
user@machine$ sudo usermod -a -G GROUP USER
```

or use

```
user@machine$ sudo adduser USER GROUP
```

as we did before with adding the new user to the sudo group.

### Deleting a user from a group

You can delete a user from a group just as you can add a user to a group.

```
user@machine$ sudo deluser USER GROUP
```

## [ 9:00 - 9:05 ] Break

## [ 9:05 - 9:40 ] Permissions. chmod, chown, chgrp 

What is the purpose of 
