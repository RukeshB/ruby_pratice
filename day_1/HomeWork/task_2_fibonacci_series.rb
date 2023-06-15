# Write a program that prints fibonacci series up to 20th element.

number_element = 20
first_number, second_number  = 0, 1
print "#{first_number}\t#{second_number}"

#18 times cuz 2 number are already printed
(number_element-2).times do
  fibonacci_number = first_number + second_number
  print  "\t#{fibonacci_number}"
  first_number, second_number = second_number, fibonacci_number
end
