def find_split_point(array, size)
  left_sum = 0

  0.upto(size-1) do|i|
    left_sum += array[i]
    right_sum = 0

    (i+1).upto(size-1) do|j|
      right_sum += array[j]
    end

    return i+1 if left_sum == right_sum
  end

  return -1
end


def print_two_parts(array, size)
  split_point = find_split_point(array, size)

  if split_point == -1 || split_point == size
     puts "Not possible"
     return ""
  end

  0.upto(size -1) do|index|
    if split_point == index
      puts ""
    end

    print "#{array[index]} "
  end
end

array = [1, 2, 3, 4]
size = array.length
print_two_parts(array,size)