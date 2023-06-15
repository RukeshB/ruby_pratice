# Capitalize each word in the sentence.
# Take sentence from the user

puts "Enter sentence : "
sentence = gets.chomp

sentence.capitalize!

(sentence.length).times do|index|
  if sentence[index]==" "
    sentence[index+1] = sentence[index+1].upcase
  end
end

puts sentence