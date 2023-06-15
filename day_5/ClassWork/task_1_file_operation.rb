# Write a ruby program to perform following operations with given methods:
#
# a. create_file(path) -> creates a new file
# b. edit_file(path,content) -> edit existing file
# c. delete_file(path) -> delete existing file
#

def create_file(path)
  if(!File.exist?(path))
    file = File.open(path,"a")
    puts"file created"
  else
    puts "file already exist"
  end
end

def edit_file(path, content)
  if(File.exist?(path))
    File.open(path,"a") do|file|
      file.puts content
    end

    puts "file edited"
  else
    puts "file not found"
  end
end

def delete_file(path)
  if(File.exist?(path))
    File.delete(path)

    puts "file deleted"
  else
    puts "file not found"
  end
end

file_name = "data.txt"
path = "./"+file_name

while true
  puts "1. create file"
  puts "2. edit file"
  puts "3. delete file"
  print "Enter a number (1 to 3) : "
  selected_number = gets.chomp.to_i

  case selected_number
  when 1
    create_file(path)
  when 2
    if(File.exist?(path))
      print "Enter a content: "
      content= gets.chomp
    end

    edit_file(path, content)
  when 3
    delete_file(path)
  else
    break
  end
end