# An electronic election program that tracks votes, total votes, and determines a winner.

# Accepts input from the user and outputs the winner of the election

# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election

candidates = [
  { name: "Donald Duck", votes: donald_duck_votes },
  { name: "Minnie Mouse", votes: minnie_mouse_votes },
  { name: "Goofy", votes: goofy_votes }
]

puts "Welcome to my election voting program.
Election candidates are: Donald Duck, Minnie Mouse, Goofy"

donald_duck_votes = 0
minnie_mouse_votes = 0
goofy_votes = 0
valid_entry = false

i = 1
3.times do
  puts "Vote #{i}: "
  vote = gets.chomp.upcase
  until valid_entry
    case vote
      when "DONALD DUCK"
        valid_entry = true
        donald_duck_votes += 1
      when "MINNIE MOUSE"
        valid_entry = true
        minnie_mouse_votes += 1
      when "GOOFY"
        valid_entry = true
        goofy_votes += 1
      else
        puts "Invalid entry. Please enter valid candidate: "
        vote = gets.chomp.upcase
    end
  end

  valid_entry = false
  i += 1
end



votes_sorted = candidates.sort_by{ |candidate| candidate[:votes] }

most_votes = votes_sorted.last[:votes]
puts "most votes #{most_votes}"

winners = []

candidates.each do |candidate|
  if candidate[:votes] == most_votes
    winners << candidate[:name]
  end
end


puts "ELECTION RESULTS....

Vote Summary:
Goofy - #{goofy_votes} vote(s)
Minnie Mouse - #{minnie_mouse_votes} vote(s)
Donald Duck - #{donald_duck_votes} vote(s)"

puts winners

if winners.length == 1
  puts "WINNER: #{winners[0]}"
else
  print "WINNERS: "
  (winners.length-1).times do |i| 
    print "#{winners[i]}, "
  end

  puts winners.last
end


# Handle ties for a winner appropriately
# Handle grammar of vote summary saying vote or votes appropriately
# Handle write in votes
# Consider how to handle more than 10 votes
# Consider how to handle more than 3 candidates
# Refactor your code so that your code is DRY (Don't Repeat Yourself)