result = [1,2,3,4,5].reduce(0) do|previous, current|
  previous + current
end

puts result

# procs

square = Proc.new {|number| number ** 2}
hi = Proc.new { puts "hi there"}

a = [1,2,3,4]
b = [11,12,13,14]

p a.map(&square)
p b.map(&square)
hi.call
puts square.call(5)

def greeting(name,&prc)
  puts prc.call(name);
end

prc = Proc.new{|name| puts "Hello ! #{name}"}

greeting("Rukesh",&prc)

puts a.map(&:even?)
puts a.select(&:even?)