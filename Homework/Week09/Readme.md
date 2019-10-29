# Homework 9

At the end of this homework, you'll have a good 

There is great website that serves dummy JSON data. This is there for people who are learning to use cURL ( and related tools ).

use curl to download the json from here:

https://jsonplaceholder.typicode.com/users/1/posts

## Problem 1
pipe the output of the curl command to another command(s) to determine how many unique userIds there are in the JSON response.

*Note*: of course the answer is 10. But what if the file was 100 million lines long and you couldn't just scroll through it. That's why you're writing
the linux command.

## Problem 2
The above command performs a GET request. You can also perform a POST request. 

```
 curl -X POST \
      --header "Content-Type: application/json" \
      -d'{"userId": 10222, "id": 0, "title": "helloWorld", "body": "this is a body"}' \
      jsonplaceholder.typicode.com/posts
```

Create 4 different POST requests, changing the userId, id, title, and body in each. Verify that the userId, title, and body all change, but
API doesn't ever update the id.

## Problem 3

Run the command from problem 2 again, but this time supply the --verbose flag to curl. In the output you will find a line indicating the
"charset" that curl is sending data in. What is the name of the charset?

## Problem 4
You can send json data from a file with curl. Google "how to send json data from a file with curl" and then issue the POST request from
problem2, but this time using a data file. Note how to do it here: https://gist.github.com/ungoldman/11282441 and here: https://stackoverflow.com/questions/18611903/how-to-pass-payload-via-json-file-for-curl

## Problem 5 
What happens if you change the content-type to 'application/txt' in the header from the command in Problem 2?

# Submission guidelines
Pull Request featuring two files
* homework9.txt
* data.json

placed in the directory Homework/StudentSubmissions/Week09/YourName

No two submissions may be identical. If you work with a friend, make sure your submissions aren't the same.

See my sample submission for tips on how to format your homework.

20 pts per problem.
