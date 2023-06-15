# Write a ruby program which can take string input from the user
# and remove the first and last characters of a string.
# Return original string if it has only two characters.

print "Enter a string : "
string = gets.chomp

unless string.length > 2
  puts string
else
  puts string[1...(string.length-1)]
end