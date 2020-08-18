# Wefactors original account generator code to utilize arrays with hashes. 
# Since each student has three pieces of data, 
# utilize a hash to store these three pieces of data, related to one another.
# When a new student record is created, one hash needs to be added to the array 
# rather than three pieces of data to individual arrays. 



# Utilizes a single array variable to store all student information, 
# instead of three individual arrays. This array will contain many hashes.
student_data = []

# Stores student ID numbers to ensure no IDs are duplicates
id_numbers = []

# Utilizes a single loop to drive the hash population:

num_of_entries = 3

# Accepts user input for the student's name
num_of_entries.times do |i|
  student_data[i] = Hash.new

  print "Enter student name (first and last name): "
  name = gets.chomp.upcase

  while name.split.length == 1
    print "Please enter first and last name: "
    name = gets.chomp.upcase
  end

  student_data[i][:name] = name


# Generates random student ID numbers from 111111 to 999999
  random_num = rand(111111..999999)

  # Makes sure none of the IDs are duplicates
  while id_numbers.include?(random_num)
    random_num = rand(111111..999999)
  end

  id_numbers << random_num

  student_data[i][:ID] = random_num


# Generates student email addresses in the format: 
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
# Accounts for first names with a space in them
  if name.split.length == 2
    first_initial = name.slice(0)
  elsif name.split.length > 2
    first_initial = name.split[0].slice(0)
    first_initial << name.split[1].slice(0)
  end

  last_name = name.split.last
  
  last_3_of_id = student_data[i][:ID].to_s.slice(3..5) 
  
  student_data[i][:email] = "#{first_initial}#{last_name}#{last_3_of_id}@adadevelopersacademy.org"

end

# Updates the printing functionality to utilize this new hash variable to print out student roster
student_data.each do |student| 
  student.each { |key, value| puts "#{key}: #{value}" }
end