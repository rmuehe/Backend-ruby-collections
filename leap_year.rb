# ask the user for a starting year and an ending year, and it will then print out all the leap years between them, including the starting or ending year if those are leap years. The rules for leap years are: A leap year is divisible by 4, except for years that are divisible by 100 -- those aren't leap years -- except for years that are divisible by 400, which ARE leap years.

#TODO: build a class
#TODO: make an add and delete method with += arrays

# returns a year int from the user 
def get_year(year_interval)
  print("Enter a #{year_interval} year: ")
  gets.chomp().to_i()
end  

starting = get_year("starting")
ending = get_year("ending")

leap_years = []

#TODO: change to case statements

# stores leap years in an array
# while reducing storage and iteration 
while starting <= ending
  if starting % 400 == 0  
    leap_years << starting
  elsif starting % 100 == 0
  elsif starting % 4 == 0
    leap_years << starting 
  else 
    starting += 1 until starting % 4 == 0
    next
  end
  starting += 4
end   

print(leap_years, "\n")


