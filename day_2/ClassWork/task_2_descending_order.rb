# Create a function that can take any non-negative integer as an argument
# and convert it to descending order

def descending_order(number)
  sort = number.to_s

  0.upto(sort.length-1) do |index1|
    0.upto(sort.length-1) do |index2|

      if sort[index1] > sort[index2]
        sort[index1] , sort[index2] = sort[index2], sort[index1]
      end

    end
  end

  return sort.to_i
end

print "Enter a number : "
number = gets.chomp.to_i.abs

puts descending_order(number)