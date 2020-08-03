# A program that plays duck duck goose. 

# Allow the user to enter the player's number they want to call goose on,  
print "Which player do you want to be the Goose? "
player_num = gets.chomp.to_i

# Say "duck" for each player before the "goose", 
# then say "goose" for the chosen player.
(1...player_num).each do |num|
    puts "Player #{num}: Duck"
end

puts "Player #{player_num}: Goose"

# Or can use a times loop with iterator variable
# (player_num - 1).times do |count|
#     puts "Player #{count + 1}: Duck"
# end

# puts "Player #{player_num}: Goose"

