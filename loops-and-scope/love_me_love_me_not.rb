# Read in number of petals on a flower. 
print "Please enter the number of petals: "
petals_num = gets.chomp.to_i

# Then one by one, print “plucking petal #1: they love me!”. 
# Alternate “They love me” and “They love me not” 
# as well as increase the petal number for each petal.
counter = 1

petals_num.times do
    if counter % 2 == 0
        puts "Plucking petal #{counter}: They love me not!"
    else
        puts "Plucking petal #{counter}: They love me!"
    end
    counter += 1
end