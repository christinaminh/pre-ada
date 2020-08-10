# Program will read in a proposed password 
# and only accept it, if it meets all rules.


# Password must contain 8 or more characters, 
# a number, a symbol (@, %, *, or !), 
# and an uppercase and lowercase letter.
length_acceptable = false
contains_number = false
contains_symbol = false
contains_uppercase = false
contains_lowercase = false
meets_all_requirements = false
# Password must be re-entered a second time
password = ""
password_reentered = nil


# Prompt user to enter a password until password meets all requirements
# Once password meets requirements, prompt user to verify password 

until password == password_reentered
  # If password does not meet requirements, 
  # let user know what they did wrong 
  # and make them reenter the password until they enter an acceptable password
  until meets_all_requirements
    puts "\nEnter password (must contain 8 or more characters, a number, a symbol (@, %, *, or !), and an uppercase and lowercase letter)."
    password = gets.chomp

    length_acceptable = password.length >= 8
    puts "Password must contain 8 characters." unless length_acceptable

    contains_number = password.count("0-9") > 0
    puts "Password must contain a number." unless contains_number

    contains_symbol = (password.include? "@") || (password.include? "%" ) || (password.include? "*") || (password.include? "!" )
    puts "Password must contain a symbol." unless contains_symbol

    contains_lowercase = password != password.upcase
    puts "Password must contain a lowercase letter." unless contains_lowercase

    contains_uppercase = password != password.downcase
    puts "Password must contain an uppercase letter." unless contains_uppercase

    meets_all_requirements = length_acceptable && contains_number && contains_symbol && contains_uppercase && contains_lowercase
  end

  # Ask user to verify password by typing it again. 
  # If password does not match, start over again with new password.
  puts "Verify password: "
  password_reentered = gets.chomp

  if password == password_reentered
    puts "Password accepted."
  else
    puts "Password does not match."
    # Reset password requirements
    meets_all_requirements = false
    password_reentered = nil
  end
end

