# Hell::Triangle
Given a triangle of numbers, finds the maximum total from top to bottom
Example:

![Triangle](https://i.imgur.com/VGVXCEc.png) 

In this triangle the maximum total is 6 + 5 + 7 + 8 = 26

An element can only be summed with one of the two nearest elements in the next row
So the element 3 in row 2 can be summed with 9 and 7, but not with 1

The triangle from above is represented as: [[6],[3,5],[9,7,1],[4,6,8,4]]

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hell-triangle'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hell-triangle

## Usage
