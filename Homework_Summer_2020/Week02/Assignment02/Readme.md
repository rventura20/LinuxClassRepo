# Using grep and pipes

Many old books are free on the internet at www.gutenberg.org

I thought we could have some fun with a classic English-language novel - 
"A Christmas Carol" by Charles Dickens.

This book can be downloaded as a .txt file from here: 
http://www.gutenberg.org/cache/epub/19337/pg19337.txt

To download this file on a digital ocean server you use a command called "wget"

`wget http://www.gutenberg.org/cache/epub/19337/pg19337.txt`

This will download the novel into a file called pg19337.txt in your present working directory.

Using what you know about grep, pipes and the wc command, your job is to do the following:

** Find 10 words that appear at least 50 times each in the novel **

In the terminal you must:
* download the file
* compute the md5sum of the file so I can see you haven't tampered with it. `md5sum pg19337.txt`
* run your grep/pipe/wc commands to prove to me that you've found 10 words that appear at least 50 times each.

** I've attached a sample of my work showing you that it is indeed possible. Note the md5sum - you're must agree with mine!**


## Submission guidelines
Submit screenshot(s) of your terminal as you do the work. You should probably be able to fit everything into one or two pictures.

Due Monday June 1st by 11:59 PM and not a second later!
