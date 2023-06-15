# puts method have line brake in end of statement
puts "Hello World 1"
puts "hello
world 2"
puts "hello " + "world " + "1"
puts 123
puts 2**3 # 2 power 3

# print method
print "hello "
print "world"

# p method
p "Hello
World"

#variable
multi_lines_string = <<MLS
hello world !
this is multi line String 

in ruby
MLS

Name = "Rukesh" #const variable
last_name = "Basukala"
age = 20+4
have_glass = false

puts Name + " " + last_name
p "age : #{age}"

#parallel variable assignement
a, b, c = 1, 2
puts a,b

a,b = b,a #swap variable
puts a,b

#type conversion
number = "55".to_i
decimal = 25.to_d
string = 5.to_s

p string, decimal, number

#get methods
print "Enter Your name : "
user_name = gets.chomp # gets methos get the string variable chomp function remove new line from a string

p "Hello #{user_name}"

print "Enter your age : "
user_age = gets.chomp.to_i