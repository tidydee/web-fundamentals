liked = false

if liked
    puts "others liked this post too"
else
    puts "you're the first one to like this post"
end

puts "========== another example ========================"

like_count = 1

if like_count == 0
    puts "nobody liked this post"
elsif like_count == 1
    puts "#{like_count} like"
else
    puts "#{like_count} likes"
end

width = 500
height = 200

# one of the conditions has to be true
if width <= 400 || height <= 200
    puts "your i mage has been saved"
else
    puts "your image is too large"
end


# both conditions have to be true
if width <= 400 && height <= 200
    puts "your i mage has been saved"
else
    puts "your image is too large"
end