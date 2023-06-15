# Write a program that prints if the input number is a prime number.

print "Enter any number : "
number = gets.chomp.to_i

is_prime = true

if(number==0 || number ==1)
  is_prime = false
end

2.upto(number-1)do |number|
  if number%number==0
    is_prime = false
    break
  end
end

if is_prime
  puts "#{number} is a prime number"

else
  puts "#{number} is not a prime number"
end