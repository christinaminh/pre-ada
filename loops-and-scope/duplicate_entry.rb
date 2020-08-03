# Add values from user until user enters a negative number
puts "Hello! We are going to total some numbers!
Enter a negative number to quit.
Please enter a number: "

total = 0
input = gets.chomp.to_i

# Require the user to enter the same value twice in order to add that value to the total.
puts "Confirm number:"
input_confirmation = gets.chomp.to_i

while input > -1 do
    if input_confirmation == input 
        total += input
        input = gets.chomp.to_i
        # Confirm number
        input_confirmation = gets.chomp.to_i
    else 
        until input_confirmation == input do
            puts "Entries do not match"
            input = gets.chomp.to_i
            # puts "Confirm number
            input_confirmation = gets.chomp.to_i
        end
    end
end

# Print total
puts "Result: #{total}"