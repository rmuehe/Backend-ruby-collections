# Write a program with a function add_up(i) .  It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum.  Call the function three times within the program, and each time print out the return value.

# TODO: object orientation 

# returns the sum of integers from 1 to i given a positive int
def add_up(i)
  sum = 0
  while i >= 1
    sum += i
    i -= 1
  end
  sum  
end

# returns a '+' separated integer range string
def add_up_str(i)
  add_str = ""
  integer = 0
  until i < 2
    integer += 1
    add_str += "#{integer} + "
    i -= 1
  end
  add_str += "#{integer + 1}" if i == 1
  add_str   
end 

# returns the sum of integers from 1 to num, 
# where num is a random integer from 1-10 by default.
# prints out the math
def random_sum(num = 10)
  random = rand(num) + 1
  sum = add_up(random)
  # TODO: formatting
  puts "The sum of positive integers up to #{random}:"
  puts "#{add_up_str(random)}"
  puts "= #{sum}\n "
  sum
end

puts
# prints 3 random integer sums from: 
# [1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
3.times {random_sum}

# prints out a test for the add_up method
def add_up_test(num = 10)
  index = 0
  array = []
  until index > num
    puts "i is: #{index}"
    puts add_up(index)
    array << add_up(index)
    index += 1
  end
  print(array, "\n")
  array
end 

# add_up_test 5

