def cal(num1,num2,operation="add")
  num1 ||= 0  #assign 0 value to num1 if num is equal to nil
  num2 ||= 0
  case operation
  when "add"
    num1 + num2
  when "sub"
    num1 - num2
  when "div"
    unless num2==0
      num1 / num2
    else
      "cannot divide by zero"
    end
  when "mul"
    num1 * num2
  end
end

puts cal(2,0,"div")

while true
  puts "execute loop when condition is true"
  puts "inline condition" if false
  break
end

until false
  puts "execute loop when condition is false"
  break
end

array = [1,2,3]
for abc in array

end