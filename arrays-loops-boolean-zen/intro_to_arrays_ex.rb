# Fill in the missing code to calculate an average of the values in the list. 
# Hint what data type should you use?

list = [3, 5, 6, 15, 27]
sum = 0

list.each do |num|
  sum += num
end

average = sum.to_f / list.length

puts average


