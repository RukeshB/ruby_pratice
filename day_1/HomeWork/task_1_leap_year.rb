# Write a program that takes an integer input and prints if the input is a leap year.

print "Enter a year : "
year = gets.chomp.to_i

if year % 400 == 0
  puts "#{year} is a leap year"

elsif year%100 == 0
  puts "#{year} is a not leap year"

elsif year%4 ==0
  puts "#{year} is a leap year"

else
  puts "#{year} is a not leap year"
end