# Generate a random number between 0 - 1000, not including 1000
random_num = rand(0..1000)

# Read in user's guess
print "Guess the number: "
guess_num = gets.chomp.to_i

# Count total number of guesses
total_guesses = 1

# Allow the user to make a guess until they guess the answer
# After each guess, print "higher" or "lower"
# Count total number of guesses
until guess_num == random_num
    if guess_num < random_num
        puts "Higher"
    elsif guess_num > random_num
        puts "Lower"
    end

    guess_num = gets.chomp.to_i

    total_guesses += 1
end

# When they guess it correctly print a winning message 
# along with their total number of guesses
puts "That's right! The number was #{random_num}! Are you psychic? It only took you #{total_guesses} tries!"
