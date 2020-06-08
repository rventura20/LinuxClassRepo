# AWK

AWK is one of my favorite command line tools, alongside grep. I've recorded a youtube video about AWK and it is here:

https://www.youtube.com/watch?v=_q6Uj4X_knc

The lecture is based on chapter one of this book:

https://www.amazon.com/AWK-Programming-Language-Alfred-Aho/dp/020107981X

## The Assignment

Use Vim to create this file (VERY IMPORTANT!!! Note that the columns are "colon-delimited" - there are ":"s between the fields ):

``` 
triangle1:10:0
triangle2:4:3
triangle3:5:200
```

The rows represent

```
triangleName:base:height
```

Use awk to print the following output:

```
area of triangle1:    50
area of triangle2:     6
area of triangle3:   500
```

note that the columns are aligned with the first output column left-aligned and the second output column right aligned.
Also note that I've use the formula for area you learned way back when you learned geometry

```
Area_of_Triangle = 0.5 * base * height
```

Watching the lecture video + completing this assignment can take you anywhere from 2 to 10 hours. However long it takes, you'll have learned a new programming language by the end of it.

### Remember the following:
* printf
* awk 'PATTERN {ACTION} file'
* awk -F":" etc

## Grading

### 85
You can produce the following output

```
area of triangle1:    50
area of triangle2:     6
area of triangle3:   500
```

### 100
You can produce the following output

```
area of triangle1:    50
area of triangle2:     6
area of triangle3:   500
TOTAL AREA:          556
```

## Submission guidelines

Due Sunday, June 14th 2020 by 11:59 PM. 
Submit 2 screenshots *on blackboard*. 



See the sample submissions in this directory showing what I expect to see.


