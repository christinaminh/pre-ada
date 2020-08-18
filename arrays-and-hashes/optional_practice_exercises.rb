# We want to be able to quickly determine the state abbreviation 
# for the states in the United States.
# Determine whether it is best to use an array or a hash, 
# and create it storing at least 4 states and their abbreviations.
# Then write code to print out only the states, 
# then only the abbreviations, and finally nicely formatted output displaying 
# both the states and their abbreviations (e.g., The abbreviation for Nebraska is NE)

# states = {
#   WA: "Washington",
#   CA: "California",
#   NV: "Nevada",
#   OR: "Oregon",
# }

# states.each_key { |abbrev| puts abbrev }

# states.each_value { |state| puts state }

# states.each { |abbrev, state| puts "The abbreviation for #{state} is #{abbrev}"}



# We want to be able to quickly determine the 
# amount of different types of food items you have in your house.
# Determine whether it is best to use an array or a hash, 
# and create it storing at least 4 food items and their quantities.
# Then write code to print out all the items and 
# their quantities using nicely formatted output.


pantry = {
  Chips: 1,
  Oranges: 3,
  Apples: 2,
}

pantry.each { |item, quantity| puts "#{quantity} #{item}"}