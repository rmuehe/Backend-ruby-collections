# Write a program which asks for a person's first name, then middle, then last.  It should store each of these parts in an array. Finally, it should greet the person using their full name.

$names = []

def prompt_name(name_position)
  print("Enter your #{name_position} name: ")
  $names.push(gets.chomp())
end  

prompt_name("first")
prompt_name("middle")
prompt_name("last")

puts "Hello, #{$names[0]} #{$names[1]} #{$names[2]}"