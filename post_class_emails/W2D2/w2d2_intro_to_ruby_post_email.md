This class, we started to learn about Ruby and programming. HTML was to define our content and CSS made it looks prettier but a programming language will enable us to give the computer some instructions to follow.

We discussed the various data types that we can use strings, integers (numbers without decimals), floats (numbers with decimals), booleans (true/false).

```ruby
# this is a comment that Ruby will ignore as it starts with "#"
string_variable = "I'm a dev" # have to use double quotes here because of the apostrophe

another_string_variable = 'hello' # a string is some characters between single or double quotes, sometimes, double quotes are the only option

integer_variable = 5  # number without a decimal value

float_variable = 3.5 # number with a decimal value

boolean_true_variable = true # notice, there is no quote

boolean_false_variable = false
```
We also looked into complex datatypes: arrays that are lists or collections of data.

```ruby
my_array = [1, "a", true, 4.5]
the array is indexed starting from 0
to retrieve the first element, we can do
first_element = my_array.first
or first_element = my_array[0]
```

An array can contain values or variables of any data type...this might cause some problems when you iterate through the array and try to do the same operation (for example, add 1) on each element and you expect each element to be a number.

We also talked about hashes that group data that is related as combinations of key/value pairs. The keys have to be unique as they will be used to retrieve the value. To access an value in a hash, instead of using its index as you would do in an array, you would use its key

```ruby
my_hash = {
    string_var: "hello",
    integer_var: 123,
    boolean_var: true
}

my_hash[:string_var] will return "hello"
```

We learned about string interpolation which is a way to insert some data into a string. Double quotes must be used!

```ruby
#assume that my_hash is still defined here, the line below will print "hello world!"
puts "#{my_hash[:string_var]} world!"
```

We can control the flow of our program using if/(elsif)/else statements and we can clean up our code and repeat ourselves less by creating methods.

Lecture slides: https://drive.google.com/open?id=1bzI0dAfNvOXfloYGmILGoj4LYxxslaXxzItXUuhESFY

Lecture video: https://drive.google.com/open?id=0B6jyzd9aAZ5NQ25FV1RJRlpFaHc

Lecture files: https://drive.google.com/open?id=0B6jyzd9aAZ5NOUZtLXRWdnE2RlE

FizzBuzz: https://drive.google.com/open?id=0B6jyzd9aAZ5NbGxrU3pKWWFSam8

For those of you who would like some stretch goals,checkout the Ruby section on Codecademy or CodeSchool https://www.codeschool.com/courses/try-ruby

Ruby has a lot of built in methods, you can check out the documentation here. You can easily get all the keys of a hash, the length of an array or a string, reverse an array, sort it etc..

Hash in Ruby: http://ruby-doc.org/core-2.3.1/Hash.html
Array in Ruby: http://ruby-doc.org/core-2.3.1/Array.html
String in Ruby: http://ruby-doc.org/core-2.3.1/String.html

Ruby Docs: http://ruby-doc.org/

See you next week!

http://pt-web-compass2.lighthouselabs.ca/days/w2d2/activities/17

Dawid