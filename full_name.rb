# Write a program which asks for a person's first name, then middle, then last.  It should store each of these parts in an array. Finally, it should greet the person using their full name.

class Name
  attr_accessor :first, :middle, :last 
  def initialize(first, middle, last)
    @first = first.strip
    @middle = middle.strip
    @last = last.strip
  end

  def to_s
    name_str = ""
    [@first, @middle, @last].each do |name|
      name_str += name + " " unless name == ""  
    end 
    name_str.strip
  end
end

def prompt_names(name_array)
  names = []
  name_array.each do |name| 
    print("Enter your #{name} name: ")
    names.push(gets.chomp)
  end
  names  
end

full_name_arr = ["first", "middle", "last"]
names = prompt_names(full_name_arr)
full_name = Name.new(*names)
puts "Hello, " + full_name.to_s
