# Write a custom iterator for map method

def custom_map(data)

  i=0
  if data.class == Array
    array = []
    while i< data.size
      array << yield(data[i])
      i +=1
    end
    return array
  end

  if data.class == Hash
    hash_data = data.to_a
    array = [];
    while i< hash_data.size
      yield (hash_data[i])
      i +=1
    end
    return hash_data
  end
end

# custom_map([1,2,3]) {|number| p number}
p custom_map([1,2,3]) {|number| number*2}
puts  custom_map([1,2,3]) {|number| number*2}

# puts "---------------------------------------"
#
# [1,2,3].map {|element| p element}
# p [1,2,3].map {|element| element}
#
# puts "---------------------------------------"
#
# p custom_map({one: 1, two: 2} ) {|number| number}
#
# puts "----------------------------------------"
#
# hash = {one: 1, two: 2}
# p hash.map {|key| key}