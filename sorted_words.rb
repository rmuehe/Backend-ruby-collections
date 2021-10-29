# prompt the user for words and add each to an array.  The user should be able to add as many words as they like, until they just hit enter to return a blank word. Then sort the array using the sort method and print it out. 

sort_arr = []

def get_word()
  print("Enter a word: ")
  gets.chomp()
end

$user_str = get_word()

while $user_str != "" 
  sort_arr.push($user_str)
  $user_str = get_word()
end

print(sort_arr.sort(), "\n")