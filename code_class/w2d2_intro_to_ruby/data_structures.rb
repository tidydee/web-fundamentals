# we are grouping all the data relative to one image in one 'blob', a hash

image_1 = {
    name: 'abc.png',
    width: 200,
    height: 300
}

image_2 = {
    name: 'xyz.png',
    width: 100,
    height: 100
}

# what is the value stored in the image_1 hash at the key 'name'
puts image_1[:name]
# what is the value stored in the image_1 hash at the key 'height'
puts image_1[:height]


# now, are method just takes a variable which should be a hash
def describe_image(image)
    puts "#{image[:name]} is #{image[:width]}px * #{image[:height]}px"
end

describe_image(image_1)


puts "========= ARRAYS ============="
# we can create a list of 'things'; an array
# an array doesn't have to contain values of the same type
# [1, 'abc', true] is a valid array

array = ['a', 'b', 'c']
puts array
puts array.first
puts array.last
puts array[1]


image_3 = {
    name: 'IMAGE3.png',
    width: 100,
    height: 100
}


my_images = [image_1, image_2, image_3]
puts my_images

puts my_images[0][:name]


# if you uncomment the line below, the loop will throw an error as the describe_image method
# expects a hash as a parameter
# when the loop reaches the last element of the array, 5, describe_image(5)
# will cause an error as we can't do '5[:name]'
# my_images = [image_1, image_2, image_3, 5]

my_images.each do |picture|
    describe_image(picture)
end

# a loop is useful when you want to repeat an action on a group of items.
# instead of typying
#describe_image(image_1)
#describe_image(image_2)
#.....
# describe_image(image_500)
# we can just type the 3 lines above to create a loop that will process
# all of the images in our list, no matter how many images we have
