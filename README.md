# hell-triangle
Given a triangle of numbers, finds the maximum total from top to bottom
Example:

![Triangle](https://i.imgur.com/VGVXCEc.png) 

In this triangle the maximum total is 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row
So the element 3 in row 2 can be summed with 9 and 7, but not with 1

The triangle from above is represented as: [[6],[3,5],[9,7,1],[4,6,8,4]]

To run it you just have call the main method passing the array as parameter and it will return the max sum, just like that:
```
ruby main.rb "[[6],[3,5],[9,7,1],[4,6,8,4]]"
>26
```
