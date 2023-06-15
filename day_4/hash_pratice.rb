number = {1=>"one", 2=>"two", 3=>"three"}
another_number = {one: ["a1", "b1"],
                  two: ["a2", "b2"]}

puts number[1]
puts another_number[:one][1]

#string to symbol and symbol to string
p :abc.to_s
p "abc".to_sym