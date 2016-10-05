image_name_1 = 'abc.png'
image_width_1 = 200
image_height_1 = 300

image_name_2 = 'xyz.png'
image_width_2 = 100
image_height_2 = 100

image_name_3 = 'ABC.png'
image_width_3 = 200
image_height_3 = 300

puts "#{image_name_1} is #{image_width_1}px * #{image_height_1}px"
puts "#{image_name_2} is #{image_width_2}px * #{image_height_2}px"
puts "#{image_name_3} is #{image_width_3}px * #{image_height_3}px"


# we are defining a method that takes 3 parameters
def describe_image(name, width, height)
    puts "#{name} is #{width}px * #{height}px (#{width * height}px)"
end

#we are now calling the method passing 3 parameters
describe_image(image_name_1, image_width_1, image_height_1)
describe_image( 'abc', 200, 200)

#uncomment the line below to see the error message we get
# describe_image('3', 'a', 'b')


# methods don't have to take parameters
def do_something
    puts "do something"
end

#calling the do_something method


do_something