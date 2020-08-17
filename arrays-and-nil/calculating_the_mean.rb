# Creates an array to store 5000 decimal numbers. 
# Randomly generates numbers from between 0 – 1 
# (including 0, but not including 1) to fill the array. 
random_nums = Array.new(5000) {|i| rand(0.0...1.0) }

# Calculates the sum of all elements in the array
sum = 0
random_nums.each { |i| sum += i }

# Calculates and print the mean of all the elements in the array.
mean = sum/(random_nums.length)

puts mean
