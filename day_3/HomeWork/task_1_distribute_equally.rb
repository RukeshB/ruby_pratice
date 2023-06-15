# Write a program which has an array of diamonds with different value e.g. [1,2,3,4,5].
# The program should distribute the diamonds equally to 3 people.

def distribute(diamonds, average, length, person,total_person)

  if(person > total_person)
    return ""
  end

  sum = 0
  index=0
  output = "person #{person}: "

  while length > 0
    sum += diamonds[index]

    # if sum > average back to previous sum
    if(sum>average)
      sum -= diamonds[index]
      index += 1
    #  if sum<average and sum !=0 put element in a output string and delete that element
    elsif(sum<average && sum != 0)
      output = output + "#{diamonds[index]} "
      diamonds.delete_at(index)
      length = length - 1

      # if sum == average concat the element to output string an d print and delete that element
    elsif(sum == average)
      puts output + "#{diamonds[index]}"
      diamonds.delete_at(index)
      return distribute(diamonds, average, length-1 , person+1,total_person)
    end
  end
end

diamonds = Array[1,2,3,4,5,1,2,3,4,5]
total_person = 3
total_diamonds = 0

diamonds.sort!
diamonds.reverse!

diamonds.length.times do|index|
  total_diamonds += diamonds[index]
end

average = total_diamonds / total_person

if total_diamonds%total_person==0
  distribute(diamonds, average, diamonds.length,1,total_person)
else
  puts "Cannot distribute equally to 3 person"
end
