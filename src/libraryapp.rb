########## STARTING LOOP HERE?

require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')
require_relative ('./module.rb')
include Options

##### can i store my titles in another place, not main app?
##### require gems here  - bundler, colourize, tty, faker, rubocop, yaml, etc

##### how do i get the methods to interact w user input - get the user input and apply method from class
############# GEM - get output to print out by character, sleep - so looks like its being printed

# create the library
library_array = 
    [    {:title=>"Breathing", :genre=>"Lifestyle", :author=>"Mr. Emmett Windy", :year=>"1999", :format=> "Hardcopy"}, 
         {:title=>"Cooking with Veggies", :genre=>"Lifestyle", :author=>"Gordon Ramsey", :year=>"2006", :format=> "Hardcopy"},
         {:title=>"Rock Climbing", :genre=>"Lifestyle", :author=>"The Grinch", :year=>"2016", :format=> "Hardcopy"}, 
         {:title=>"Stuck In The Well", :genre=>"Mystery", :author=>"Goosebumps McFadden", :year=>"2010", :format=> "Hardcopy"}, 
         {:title=>"Train Murder", :genre=>"Mystery", :author=>"French Dude", :year=>"1906", :format=> "Hardcopy"}, 
         {:title=>"How to Code", :genre=>"Mystery", :author=>"Devops Engineer", :year=>"2020", :format=> "Hardcopy"},
         {:title=>"We Love the Greeks!", :genre=>"History", :author=>"The Romans", :year=>"500", :format=> "Hardcopy"}, 
         {:title=>"We Went to the Moon", :genre=>"History", :author=>"NASA", :year=>"1969", :format=> "Hardcopy"}, 
         {:title=>"Fashion", :genre=>"History", :author=>"Rupaul", :year=>"2020", :format=> "Hardcopy"}]

library = Library.new
# populate library with books
library_array.each do |book_info|
	book = Book.new(book_info[:title], book_info[:author], book_info[:year], book_info[:genre], book_info[:format])
	# add book to library
	library.addBook(book)
end


# Main 

# Welcome - get name

####### STARTING LOOP HERE?

puts "Welcome to the Library! What's your name?"
name = gets.chomp.to_s.capitalize
############# Validate name input so it has no integers, spaces etc?

# create a user instance
user = User.new(name)

######### EXPLAIN THIS = loops running
running = true
# browseSameGenre = false
# browseDiffGenre = false

system 'clear'

puts "Hi #{name}!" 
puts
puts "What kind of books do you like?"
puts

# pushes genres into the genre_choices array
library.genre_choices << library.getGenres

    
######### ONLY want this to run if they have just chosen a genre - LOOPS
######### Make this a method? in library class? didnt work before

# code blocks for user choosing a genre by typing a number

# displays array of genres to choose from and prompts user
puts "#{library.showGenreChoices}" 
puts "Please type 1, 2 or 3 to choose." 

########## need input validation and error handling here?
 


# validating input
answerchoice = gets.chomp.to_i
 ############## START OF LOOP
while running
  until answerchoice >= 1 && answerchoice <= 3 ####error handling - begin rescue block??
    puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a genre."
    answerchoice = gets.chomp.to_i
  end
    
# equates user typing integer as equivalent to genre choice
  if answerchoice == 1
    genre_choice = "Lifestyle"
        # frequent system clears throughout app to keep output neat for user experience
    system 'clear'
    puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
    puts
  end

  if answerchoice == 2
    genre_choice = "Mystery"
    system 'clear'
    puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
    puts
  end
    
  if answerchoice == 3
    genre_choice = "History"
    system 'clear'
    puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
    puts
  end


############ GEM - Get the books to printout one by one, use tty loading symbol? prints/sleeps

 
  # lists books by genre depending on what genre the user chose
  library.listBooksByGenre(genre_choice)
  

############## LOOP - only want to print this if just chosen genre and after printed books available
############### BETTER METHOD FOR GETTING BOOK THAN TYPING TITLE? Need to equate chosen_book with a book OBJECT

  puts "What book in the #{genre_choice} genre do you want to borrow? Type the title."
  puts 
  puts "******************************************************"
  puts "Or: type 'options' to view options menu"
  puts "******************************************************" 
  puts  

############### NEED FURTHER VALIDATION of input if it is going to be typed by user?
  chosen_book = gets.chomp 

  system 'clear'

# borrowing a book!
# validate that chosen_book is a real title otherwise route back - use method below?
 if chosen_book.downcase == "options" ####################BE ABLE TO TYPE o? #want this method after n confirm book
  system 'clear'  
  Options::displayOptions(user, library)
  puts "#{library.showGenreChoices}" 
  puts "Please type 1, 2 or 3 to choose." 
  answerchoice = gets.chomp.to_i
  continue
 end

 if chosen_book.downcase != "options"  
    puts "So you'd like to borrow '#{chosen_book}'? (y/n)"
    answer = gets.chomp[0].downcase ##############REMOVE [0]
    while answer != "y" and answer != "n"
      puts "Not a valid input, please type y or n"
      puts
    end      
    
    if answer == "n"
      system 'clear'
      Options::displayOptions(user, library)
      puts "#{library.showGenreChoices}" 
      puts "Please type 1, 2 or 3 to choose." 
      answerchoice = gets.chomp.to_i
      continue
    end
    
    #type quit anywhere in program and call quitmethod?
    
    if answer == "y"
       # get the book from library
       borrowed_book = library.getBook(chosen_book)
    end
  end    
end
    
################################ NOT WORKING
################ NEED TO CHECK IF AVAIL FIRST?



if !borrowed_book #AKA if it is not a valid title
       # ask again (return to top of loop)
  system 'clear' 
  puts "I'm sorry - I don't think that book is in our library! Maybe check your typing."
  puts
  puts "#######this should loop to titles again" ####################BROKEN
  puts
  end

# make sure book is available
if borrowed_book.isAvailable

    # - set book borrowed property on book
  borrowed_book.borrow
    
    # - add book to user's @borrowed_books array
  user.borrowBook(borrowed_book)

else
puts "I'm sorry. That book is not currently available."
puts
end

 #next ######## from janels old loop
                              
# break ###########was there to fix infinite loops
  system 'clear'
  puts "Congratulations! You have borrowed this book:"
  puts
  puts "#{borrowed_book}"
  puts
           
            
################## PUT OPTIONS HERE
   puts "Would you like to go to the options menu or to quit? type 'options' for options and 'quit' for quit" 
   answer_status = gets.chomp.downcase
    if answer_status == "options"
      system 'clear'
      Options::displayOptions
       break #############need this so it doesnt go back to genres auto
      ########## need to redirect to start here - kills app
    end
#    system 'clear'

   #############  fix loops here - this kills app
   if answer_status == "quit" 
    puts "#####this should loop back to quitmethod" 
    library.quitmethod
    break
   end
 end
end



#how to make options menu work
#options menu is a module method, called when needed, there is a loop that answer 2 breaks and takes back to genre

#use all methods or delete them
#stop endless looping
# x
#clear terminal output for clarity
#dont autoprint account status - options
#easier way to choose book titles - use number counter - tty prompt
#capitalising titles when choosing
#verify book title choice
#method for if book is borrowed by user, and they try to borrow again, puts they already have it
#view account
#fix quit thing - user can type 'quit' at ANY TIME to quit - warn that data will be lost
#Loops to encapsulate program
#quit or check acct at any time - more options to redirect
#sleep function, make it look like its typing, colourise
#more conditional control structures
#validate input
#loops
#error handling and testing
#update docs/diagrams, help file etc
#trello
#gems
#comment through code explaining logic and plan ppt
#ternary operators - use one somewhere!
#everything that can be a method is a method
#what are modules
#guard clauses rubocop - prevent nested conditionals - use until
#fix indentation and styling
#comment as to what sections are doing what
#REMOVE UNESECARY METHODS
#EXTENSIVE MANUAL TESTING
#module