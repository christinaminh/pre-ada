# A program that generates some student information. 

# Starts by creating three arrays:
# - An array that will contain student names
# - An array that will store student ID numbers
# - An array that will contain student email addresses
names = []
id_numbers = []
emails = []

# # Asks the user to enter in 5 student names (first and last name) 
# # and stores those values in the first array in all uppercase 
# # even if the information is not entered by the user in uppercase.

# num_of_entries = 5
# num_of_entries.times do
#   print "Enter student name (first and last name): "
#   name = gets.chomp

#   while name.split.length == 1
#     print "Please enter first and last name: "
#     name = gets.chomp
#   end 

#   names << name.upcase
# end

# Reads in the student names from a file instead of the user and make the array size according to the number of names
file = 'student_names.txt'
File.readlines(file).each { |name| names << name.upcase }

num_of_entries = names.length


# Generates random student ID numbers from 111111 to 999999 
# and put these values to the student ID number array.
num_of_entries.times do
  random_num = rand(111111..999999)

  # Makes sure none of the IDs are duplicates
  while id_numbers.include?(random_num)
    random_num = rand(111111..999999)
  end

  id_numbers << random_num
end

# Generates student email addresses in the format: 
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
num_of_entries.times do |i|
  # Accounts for first names with a space in them
  if names[i].split.length == 2
    first_initial = names[i].slice(0)
    last_name = names[i].split[1]
  elsif names[i].split.length > 2
    first_initial = names[i].split[0].slice(0)
    first_initial << names[i].split[1].slice(0)
    last_name = names[i].split[-1]
  end
  
  last_3_of_id = id_numbers[i].to_s.slice(3..5) # Accounts for ID numbers whose last 3 digits are less than 100 (e.g. 111008) 
  
  emails << "#{first_initial}#{last_name}#{last_3_of_id}@adadevelopersacademy.org"
end


# Prints out all the student names, ID numbers, and email addresses in parallel.
num_of_entries.times do |i|
  puts "Student Name: #{names[i]}"
  puts "Student ID Number: #{id_numbers[i]}"
  puts "Student Email Address: #{emails[i]}"

  i += 1
end