# ask the user for a starting year and an ending year, and it will then print out all the leap years between them, including the starting or ending year if those are leap years. The rules for leap years are: A leap year is divisible by 4, except for years that are divisible by 100 -- those aren't leap years -- except for years that are divisible by 400, which ARE leap years.


print("Enter a starting year: ")
starting = gets.chomp().to_i()
print("Enter an ending year: ")
ending = gets.chomp().to_i()

$leap_years = []

while starting <= ending
  if starting % 400 == 0  
    $leap_years.push(starting)
  elsif starting % 100 == 0
    nil
  elsif starting % 4 == 0
    $leap_years.push(starting)
  end  
  starting += 1  
end   

print($leap_years, "\n")


