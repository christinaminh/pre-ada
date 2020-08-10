# Prompt for rate of pay and hours worked. 
# Calculate gross pay. 
# Provide time-and-a-half for hours worked beyond 40 
# (e.g., if you get paid $10/hr and work 45 hours in a week, 
# you would gross $475 (40 x 10 + 5 x 15).



# print "Enter rate of pay: "
# rate = gets.chomp.to_i

# print "Enter hours worked: "
# hours = gets.chomp.to_i


# if hours <= 40
#     gross_pay = rate * hours
#     puts "$#{'%0.2f' % gross_pay}"
# elsif hours > 40
#     gross_pay = rate * 40
#     overtime = (hours - 40) * rate * 1.5
#     gross_pay += overtime
#     puts "$#{'%0.2f' % gross_pay}"
# end

# Is it better to have longer, descriptive variable names
# even though the variable only exists within a small block?
# I can't tell which way takes less mental effort to read


print "Enter rate of pay: "
rate_of_pay = gets.chomp.to_i

print "Enter hours worked: "
hours_worked = gets.chomp.to_i



if hours_worked <= 40
    gross_pay = rate_of_pay * hours_worked
    puts "You earned $#{'%.2f' % gross_pay}."
elsif hours_worked > 40
    gross_pay = rate_of_pay * 40

    overtime_hours = hours_worked - 40
    overtime_pay = rate_of_pay * (1.5 * overtime_hours)
    
    gross_pay += overtime_pay
    
    puts "You earned $#{'%.2f' % gross_pay}."
end


# ADA - A good solution would be:

# print "What is your rate of pay  ==> "
# pay = gets.chomp.to_f

# print "How many hours did you work ==> "
# hours = gets.chomp.to_f
# overtime = 0

# if hours > 40
#   overtime = hours - 40
#   hours -= overtime
# end

# if overtime > 0
#   earnings = hours * pay + overtime * 1.5 * pay
# else
#   earnings = hours * pay
# end

# printf("You earned $%.2f\n", earnings) 



# Rewrite the solution to the previous problem adding this modification: 
# do not process any employee if their hours worked is greater than 60, 
# instead display the message Please see manager.

print "Enter rate of pay: "
rate_of_pay = gets.chomp.to_i

print "Enter hours worked: "
hours_worked = gets.chomp.to_i


if hours_worked <= 40
    gross_pay = rate_of_pay * hours_worked
    puts "You earned $#{'%.2f' % gross_pay}."
elsif hours_worked > 40 && hours_worked <= 60
    gross_pay = rate_of_pay * 40

    overtime_hours = hours_worked - 40
    overtime_pay = rate_of_pay * (1.5 * overtime_hours)
    
    gross_pay += overtime_pay

    puts "You earned $#{'%.2f' % gross_pay}."
elsif hours_worked > 60
    puts "Please see manager."
end
