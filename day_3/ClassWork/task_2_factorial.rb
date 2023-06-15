# Write a program to find factorial of a number using recursive method.

def factorial(number)
  if number == 0 || number == 1
    return 1
  end

  return number * factorial(number-1)
end

print "Enter a number to find factorial : "
number = gets.chomp.to_i

puts "Factorial of #{number} is #{factorial(number)}"