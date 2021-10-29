# Write a program with a function add_up(i) .  It is to be passed a positive integer, and it will add all the numbers from 1 to that integer and return the sum.  Call the function three times within the program, and each time print out the return value.

def add_up(i)
  sum = 0
  while i >= 1
    sum += i
    i -= 1
  end
  sum  
end

def add_and_print(num)
  puts add_up(num)
end

add_and_print(1)
add_and_print(2)
add_and_print(3)