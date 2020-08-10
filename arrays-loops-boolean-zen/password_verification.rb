# Program will read in a proposed password 
# and only accept it, if it meets all rules.

# Prompt user for new password
puts "Enter password (must contain 8 or more characters, a number, a symbol (@, %, *, or !), and an uppercase and lowercase letter)."
password = gets.chomp
password_reentered = nil

# Password must contain 8 or more characters, 
# a number, a symbol (@, %, *, or !), 
# and an uppercase and lowercase letter.
contains_8_char = false
contains_number = false
contains_symbol = false
contains_uppercase = false
contains_lowercase = false

# Check password for requirements
contains_8_char = true if password.length >= 8

password.split('').each do |character|
  if character == character.to_i.to_s
    contains_number = true 
  elsif character == "@" || character == "%" || character == "*" || character == "!"
    contains_symbol = true
  elsif character.upcase! != nil
    contains_lowercase = true
  elsif character.downcase! != nil
    contains_uppercase = true
  end
end


# Prompt user to enter a password until password meets all requirements
# Once password meets requirements, prompt user to verify password 

until password == password_reentered
  
  # If password does not meet requirements, 
  # let user know what they did wrong 
  # and make them reenter the password until they enter an acceptable password
  until contains_8_char && contains_number && contains_symbol && contains_uppercase && contains_lowercase
    puts "Invalid password. "

    puts "Password must contain 8 characters." if contains_8_char == false

    puts "Password must contain a number." if contains_number == false
    
    puts "Password must contain a symbol." if contains_symbol == false

    puts "Password must contain an uppercase letter." if contains_uppercase == false

    puts "Password must contain a lowercase letter." if contains_lowercase == false

    # Prompt user for new password
    puts "\nEnter password (must contain 8 or more characters, a number, a symbol (@, %, *, or !), and an uppercase and lowercase letter)."
    password = gets.chomp
    
    # Reset password requirements
    contains_8_char = false
    contains_number = false
    contains_symbol = false
    contains_uppercase = false
    contains_lowercase = false

    # Check password for requirements
    contains_8_char = true if password.length >= 8

    password.split('').each do |character|
      if character == character.to_i.to_s
        contains_number = true 
      elsif character == "@" || character == "%" || character == "*" || character == "!"
        contains_symbol = true
      elsif character.upcase! != nil
        contains_lowercase = true
      elsif character.downcase! != nil
        contains_uppercase = true
      end
    end

  end

  # Make the user enter the password a second time to verify, 
  # and if it's not the same as the original password, 
  # make them repeat the process
  puts "Verify password: "
  password_reentered = gets.chomp

  if password == password_reentered
    puts "Password accepted."
    
  else
    puts "Password does not match."

    # Prompt user for new password
    puts "\nEnter password (must contain 8 or more characters, a number, a symbol (@, %, *, or !), and an uppercase and lowercase letter)."
    password = gets.chomp

    # Reset password requirements
    password_reentered = nil
    contains_8_char = false
    contains_number = false
    contains_symbol = false
    contains_uppercase = false
    contains_lowercase = false

    # Check password for requirements
    contains_8_char = true if password.length >= 8

    password.split('').each do |character|
      if character == character.to_i.to_s
        contains_number = true 
      elsif character == "@" || character == "%" || character == "*" || character == "!"
        contains_symbol = true
      elsif character.upcase! != nil
        contains_lowercase = true
      elsif character.downcase! != nil
        contains_uppercase = true
      end
    end

  end
end

