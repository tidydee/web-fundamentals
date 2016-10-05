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