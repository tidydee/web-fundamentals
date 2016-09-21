#Lecture Notes W2D2

##Introduction to Ruby
+ Content is static
+ We don't want to go and create all this HTML ourselves.
+ Easier to maintain code
+ We want to use power of Sintra framework
+ Learn the Ruby language
+ It will take whatever post date we give it and it will render our HTML pages for us.

##Lecture topics
+ What is Ruby?
+ Object types
+ Variables
+ String interpolation
+ Control flow
+ Methods
+ Hashes and Arrays

###Notes
+Variables and how we can use them in String interpolation
+Using boolean logic to control flow
+Methods that powers our applications

##What is a programming language?
+Computer can only do what we tell it
+We use programming languages to comunicate our ideas into functions that the computer understand and know how to execute.

##Different types of data/objects
+Can use double quotes or single quotes
+Interger - non-decimal
+Float - decimal
+Boolean - true/false

##Variables DEMO
+puts 'hello world'
+puts "hello world"
+puts "I'm Sarah" vs 'I'm sarah'
+Both "" and '' is good. Depends on personal choice or company's style.
+puts "\"I'm sarah\""

##Ruby can do Math
+puts 5 + 2
+puts 5 + 2.2 - Float in operation will return a float in output.
+ puts "5" + "2" => "52"
+puts "hellow" + "world" => "hellow world"
+puts true
+puts false
+puts 2 == 3 => boolean comparitive operations
+puts 2 < 3 
+puts 2 <= 3 

+puts 2 != 3 => Not Equal to something

##Let's save this for later - "SLIDE"
+ Setting variables
+ Variable is a placeholder in memory
+ variables can be:
  ..* name ="Dawid"
  ..* age = 33
  ..* amount = 12.23
  ..* action = true
  ..* action = false

+Ruby is not a "Strongly Typed" language
+num1 = 2
+num2 = 3

+ puts num1 - num2 => -1

+num1 = "hello"
+num2 = "world"

+ puts num1 - num2 => Error! Can't subtracked Strings!

##Naming is important!
+Follow slide

##Combinding Strings
+ We use "String Interpolation"
+ "#{name} is #{age}" years old."
+ String Interpolation makes our text more dynamic and useful

###Give Demo on String Interpolation

```ruby
name = "Dawid"
city = "Vancouver"

puts "I'm #{name}, I live in #{city}."

puts "Sum is #{4 + 5}"
puts 'Sum is #{4 + 5}' 

$=> Error! Double quotes are necessary
```

### Any logic can be execute with String Interpolation!

###NOW!! We "write/code" functions that uses variables and creates data flow in our applications.

##Control Flow
+We want our application(s) to be able to make decions on our behaves.
+ We can't always be present and we cannot nearly make a decision as fast as a computer. 

+ End of variables.rb
=====================

### control_flow.rb
```ruby
liked = true

if liked
  puts "other liked this post too"
else
  puts "you're the first one to like thie post"
end
```

###How to comment
```ruby 
# liked = true

# if liked
#  puts "other liked this post too"
# else
#  puts "you're the first one to like thie post"
# end
```

###Another example

```ruby
like_count = 3

if like_count == 1
  puts "#{like_count} like"
else
  puts "#{like_count} likes"
end
```

```ruby
like_count = 3

if like_count == 1
  puts  "#{like_count} like"
elsif like >=100
  puts rand(1000) + "likes"
else
  puts "#{like_count} likes"
end
```

|Comparison Operator | Description
------- | -------
|      ==            | Tests for equality. Returns true or false
|      .eql?         | Same as ==.
|      !=            | Tests for inequality. Returns true for inequality or false for equality
|      <             | Less than. Returns true if first operand is less than second operand. Otherwise returns false
|      >             | Greater than. Returns true if first operand is greater than second operand. Otherwise returns false.
|      >=            | Greater than or equal to. Returns true if first operand is greater than or equal to second operand. Otherwise returns false.
|      <=            | Less than or equal to. Returns true if first operand is less than or equal to second operand. Otherwise returns false.
|      <=>           | Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.


## We can do more complexed things...

```ruby
width = 400
height = 200

if with <= 400 && height <= 200
  puts "your image has been saved"
else
  puts "your image is too large"
end
```

```ruby
width = 400
height = 200

if with <= 400 || height <= 200
  puts "your image has been saved"
else
  puts "your image is too large"
end
```

###later, not now!
```ruby
for loop

while loop
```

## Methods

```ruby
image_name1 = "abc.png"
image_width_1 = 200
image_height_1 = 200

image_name2 = "xyz.png"
image_width_2 = 100
image_height_2 = 100

image_name3 = "foo.png"
image_width_1 = 500
image_height_1 = 300

puts "#{image_name1} is #{image_width_1}px x #{image_height_1}px"

# this is ok for 2, 3, 4 images but not 1000+

def describe_image(name, width, height)
  puts "#{name} is #{width}px x #{height}px"
end

#order of variables matter
describe_image(image_name1, image_width_1, image_height_1)

# I can also hard values...
describe_image("abc", 400, 200)


# Let's introduce a slight modification to our method...
def describe_image(name, width, height)
  puts "#{name} is #{width}px x #{height}px (#{width * height}Total pixels)"
end

#only had to make the change once!
describe_image(image_name3, image_width_3, image_height_3)
```

### Again, Ruby is not a Strongly Typed language such as Java, meaning I can pass my method a string or a integer and it will use them interchangeably.

+ Methods has a Method/Function that we will write ourselves today for our application. This method will print something nice for you when someone interacts with your images within your application.

## Functions don't have to take a parameter/value

```ruby
def do_something
  put "Doing something..."
end

return do_something
```

##Returning a Response

+ Ruby returns the last thing you did!
+ Return is optional most times

## Combinding our data
+ We use a Hash (data structure) to store our information.

```ruby
post = {
  title: "Great times we had.",
  image_url: "http://www.image.com"
  time_ago_in_minutes: 30,
  username: "sharky"
}

#to access a value
post[:title]
post[:username]
```

###Demo

```ruby
image_1 = {
  name: "my_picture",
  width: 200,
  height: 500
}

puts image_1[:name]
puts image_1[:height]
puts image_1[:width]

def describe_image(image)
  puts "#{image1[:name]} is #{image_1[:width]}px x #{image_1[:height}px (#{image[:width] * image_1[:height]}Total Pixels"
end

describe_image
```

## Multiple of somehting - "ARRAYS"
+ Array has an index
+ index starts at "array[0]"

```ruby
array = ["a","b","c"]

puts array[0]
puts array[1]
puts array[2]
puts array.first
puts array.last
puts array.last <=> array.first
```

###Complexed data structures

```ruby
image_name1 = "abc.png"
image_width_1 = 200
image_height_1 = 200

image_name2 = "xyz.png"
image_width_2 = 100
image_height_2 = 100

image_name3 = "foo.png"
image_width_1 = 500
image_height_1 = 300

image_array = [image_1, image_2,image_3]
puts image_array

puts image_array[0]
puts image_array[0][:name]
```
+ Arrays work well for a performing a series of operations on.
| i.e. using with loops

```ruby
image_array.each do |img|
  puts img
end

image_array.each do |img|
  puts img[:name]
end

```

## END of Lecture 1!!

# FizzBuzz Exercise

```ruby
# Our program should
# - make a list of numbers from 1 to 100 (inclusive)
# - for each number:
# print "Fizz" if divisible by 3
# print "Buzz" if divisible by 5
# print "FizzBuzz" if divisible by 3 AND 5
# otherwise, print the number


# uncomment the block of code you want to run to test each version

# first solution ======= using if/elsif/else ==========

## (1..100) will create a range, a set  of numbers from 1 to 100 inclusive
## http://docs.ruby-lang.org/en/2.0.0/Range.html
(1..100).each do |number|
  #  x % y (x modulo y ) returns the remainder of the division of x by y
  # x is divisible by y if x % y is equal to 0
  # use of == to do a comparison, whereas = assigns a value to a variable
  
  
  # it's important to perform this test before the division by 3 or 5
  # the number is divisible by both 3 AND (&&) 5
  if number % 3 == 0 && number % 5 == 0
    puts 'FizzBuzz'
  # the number is not divisible by both but is divisible by 3
  elsif number % 3 == 0
    puts 'Fizz'
  # the number is not divisible by both but idivisible by 5
  elsif number % 5 == 0
    puts 'Buzz'
  # if not divible by 3 or 5
  else
    puts number
  end
end

# === second solution === using inline ifs and a variable for the output

##we are using string concatenation to build up the final string we want to output
# (1...100).each do |number|
#   #we start with an empty string
#   output = ""
#   # we add 'Fizz' to the end of our string (using '<<') if it is divisible by 3
#   output << 'Fizz' if number % 3 == 0
#   # we append 'Buzz' to our output string if it is divisible by 5
#   output << 'Buzz' if number % 5 == 0
#   # we append the number (converted into a string using 'to_s' method) 
#   # to our string only if it's still the empty string
#   output << number.to_s if output == ""
#   puts output
# end

# == Third solution == calling a method on each number

# method using string concatenation
# def fizzbuzz(number)
#   output = ""
#   output << 'Fizz' if number % 3 == 0
#   output << 'Buzz' if number % 5 == 0
#   output << number.to_s if output == ""
#   output # the last line that runs in the method will be returned
# end


#  First syntax for the loop
# (1..100).each do |number|
#   puts "#{fizzbuzz(number)}"
# end
#
# # other syntax for the loop, one line only
# # this syntax can only be used if we do only one thing (have only one line) in our block
#
# (1..100).each { |number| puts "#{fizzbuzz(number)}" }

# case statement ======================================================

## === Fourth solution === case statement 
# (1..100).each do |number|
#     output = "" 
#     # we use a case statement instead of if/elsif/else 
#     case
#     when number % 3 == 0 && number % 5 == 0 
#         output = 'FizzBuzz'
#     when number % 3 == 0 
#         output = 'Fizz'
#     when number % 5 == 0
#         output = 'Buzz'
#     # 'else' is the default case, we could set output = number 
#     # above instead and remove the 2 lines below
#     else 
#         output = number
#     end
#     puts output
# end
```

#Start Sinatra and we are going to make some changes - see Sinatra section in Class Activities Notes.





