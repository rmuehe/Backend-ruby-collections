# prompt the user for words and add each to an array.  The user should be able to add as many words as they like, until they just hit enter to return a blank word. Then sort the array using the sort method and print it out. 

class Words
  # prompts user for words
  def get_words
    print("Enter words: ")
    gets.chomp.strip
  end

  # stores user input before entered in array
  def user
    @user_str = get_words
  end

  # gets words from user when instantiated
  # stores them in an array
  def initialize
    @user_str
    @user_arr = [] 
    user
    until @user_str == ""
      @user_str.split(" ").each {|word| @user_arr.push(word)}
      user
    end
  end 

  # returns a case insensitive, alphabetically sorted array
  def sort_no_case 
    @user_arr.sort_by {|word| word.downcase }
  end  

  # returns a case sensitive, alphabetically sorted array
  def sort 
    @user_arr.sort
  end  

  # returns an unsorted array
  def to_a
    @user_arr
  end  
end

user_words = Words.new
print(user_words.sort, "\n")