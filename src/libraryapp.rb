########## STARTING LOOP HERE?

require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')

##### can i store my titles in another place, not main app?
##### require gems here  - bundler, colourize, tty, faker, rubocop, yaml, etc

##### how do i get the methods to interact w user input - get the user input and apply method from class
############# GEM - get output to print out by character, sleep - so looks like its being printed


# Quit program method to be called within program

  def quitmethod 
		# quitinput = gets.chomp[0].downcase
		# if quitinput == "q"
			system 'clear'
			puts "Are you sure you want to quit? Your session data will not be stored. Type y/n"
			answerquit = gets.chomp.downcase
			##############How to resume what they were doing before? options menu again?
			
			until answerquit[0] = "n" || "y" ###is this breaking it?
        puts "I dont understand that input. Please type y or n."
        

			if answerquit[0] == "y"
				system 'clear'
				puts "Thank you for visiting the library! See you again soon."
				puts
				break
			end

			if answerquit[0] == "n"
				puts "ok lets loop back around " #HOW?
				puts 		
				break		
			end 	
        end 
    end


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



    ########## why does it sometimes loop back to here after quit
# validating input
  answerchoice = gets.chomp.to_i
    until answerchoice >= 1 && answerchoice <= 3
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
#need another end here?
    
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
    while running
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
      options.displayOptions ##################### TAKE TO OPTIONS MENU
 end

 if chosen_book.downcase != "options"
    puts "So you'd like to borrow '#{chosen_book}'? (y/n)"
 end

    answer = gets.chomp[0].downcase
 

    #quitmethod ##quitmethod not working - looping back to choosing genre???
 
 

###################### need LOOP here to go to options menu - this breaks the program
# if answer != "n"
#     puts "not a valid input. please type y or n"
#     puts 
#     puts "Here are the books in that genre again:"

# if answer != "y"
#     puts "not a valid input. please type y or n"
#     puts 
#     puts "Here are the books in that genre again:"

    
################################ NOT WORKING
################ NEED TO CHECK IF AVAIL FIRST?

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

if answer == "n"
    puts "No worries, what would you like to do?" #go to options menu
    #break ############### kills app
  end

 
  if answer == 'y'
     # get the book from library
     borrowed_book = library.getBook(chosen_book)
      # if !borrowed_book means it wasn't a valid title

  if !borrowed_book
         # ask again (return to top of loop)
    system 'clear' 
    puts "I'm sorry - I don't think that book is in our library! Maybe check your typing."
    puts
  end

     #next ######## from janels old loop

                                 
        
    break ###########INFINITE LOOP

         system 'clear'
         puts "Congratulations! You have borrowed this book:"
         puts
         puts "#{borrowed_book}"
         puts
           
            
     

################## PUT OPTIONS HERE
   puts "Would you like to see your account status? (y/n)" 
   answer_status = gets.chomp[0].downcase
    if answer_status == "y"
      system 'clear'
      puts "Here is your account status:"
      puts
      user.display_user_details
      puts
      break #############
      ########## need to redirect to start here - kills app
    end
#    system 'clear'

   #############  fix loops here - this kills app
   if answer_status == "n" 
    puts "ok cool! what do you want to do?" 
    break
   end
 end
end




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