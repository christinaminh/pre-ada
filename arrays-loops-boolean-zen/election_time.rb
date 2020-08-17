# An electronic election program that tracks votes, total votes, and determines a winner.

# Accepts input from the user and outputs the winner of the election
# Input: Poll 10 people for their election vote
# Output: Print the total votes cast as well as the winner of the election


# Considers how to handle more than 3 candidates
candidates = {
  "Donald Duck" => { votes: 0 }, 
  "Minnie Mouse" => { votes: 0 },
  "Goofy" => { votes: 0 }
}

# Introduce program and read number of votes user will enter
print "Welcome to my election voting program.
Election candidates are: Donald Duck, Minnie Mouse, Goofy.
Number of votes to enter: "

num_entries = gets.chomp.to_i

# Considers how to handle more than 10 votes, 0 votes, or letters
until num_entries > 0
  print "To enter votes, please enter a number greater than 0: " 
  num_entries = gets.chomp.to_i
end

# Read in user votes and track votes for each candidate
i = 1
num_entries.times do
  valid_entry = false
# Handles write in votes and incorrect spelling
  until valid_entry
    print "Vote #{i}: "
    vote = gets.chomp.upcase

    candidates.each_key do |name|
      if vote == name.upcase
        candidates[name][:votes] += 1
        valid_entry = true
      end
    end
  
    unless valid_entry
      puts "Candidate not found. Do you want to write in a new candidate? (Y/N)"
      yes_or_no = gets.chomp.upcase

      if yes_or_no == "Y"
        print "Enter new candidate: "
        candidates[gets.chomp.capitalize] = { votes: 1 }
        valid_entry = true

      elsif yes_or_no == "N"
        puts "Please choose from existing candidates: "
        candidates.each_key { |key| puts "#{key} " }
      else
        puts "\nInvalid entry."
      end
    end
  end

  i += 1
end



# Sorts candidates by number of votes to determine winner(s) with the most votes
winners = []

votes_sorted = candidates.sort_by{ |name, candidate_data| candidate_data[:votes] }

most_votes = votes_sorted.last.last[:votes]

# Handles ties for a winner
candidates.each  do |name, candidate_data|
  if candidate_data[:votes] == most_votes
    winners << name
  end
end

# Prints election results including votes for each candidate and the winner(s)
puts "\nELECTION RESULTS....

Vote Summary:"

# Prints out each candidate and their total number of votes
candidates.each do |name, candidate_data|
  print "#{name} - #{candidate_data[:votes]} "
  # Handles grammar of vote summary saying vote or votes appropriately
  if candidate_data[:votes] == 1 
    print "vote\n"
  else # if 0 or multiple votes, say votes instead of vote
    print "votes\n"
  end
end

# Prints out the winning candidate
# Handles grammar of winner(s) depending on ties
if winners.length == 1
  puts "\nWINNER: #{winners[0]}"
else
  print "\nWINNERS: "

  (winners.length-1).times do |i| 
    print "#{winners[i]}, "
  end

  puts "and #{winners.last}"
end