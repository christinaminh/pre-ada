# Create an array to store 5 boolean values entered in by the user. 
# Print out YES if all the values are true and NO if at least one value is false. 
# Hint: Prompt the user to enter true or false, and accept those values using gets. 
# Since gets will give us back a string (instead of the boolean values we want) 
# use if statements to convert those strings to boolean values.

arr_of_bool = []


5.times do 
  print "Enter a boolean value (true or false): "
  bool = gets.chomp.downcase
    if bool == "true"
      arr_of_bool << true
    elsif bool == "false"
      arr_of_bool << false
    end
end


if arr_of_bool.include?(false)
  print "NO"
else
  print "YES"
end