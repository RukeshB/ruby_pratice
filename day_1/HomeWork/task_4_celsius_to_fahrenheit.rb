# Write a program that converts the given temperature from celsius to fahrenheit.
# The output should be displayed up to 2 decimal places.

print "Enter temperature in celsius : "
celsius = gets.chomp.to_f

fahrenheit = ((celsius * 9) / 5)+32

puts "#{celsius} celsius = #{fahrenheit.round(2)} fahrenheit"