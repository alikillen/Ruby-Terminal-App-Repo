require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')
#can i store my titles in another place, not main app?
#require gems here  - bundler, colourize, tty, faker, etc

#how do i get the methods to interact w user input - get the user input and apply method from class


# create the library
library_array = 
    [    {:title=>"Breathing", :genre=>"Lifestyle", :author=>"Everyone", :year=>"1999", :format=> "hardcopy"}, 
         {:title=>"Cooking with Veggies", :genre=>"Lifestyle", :author=>"Me", :year=>"2006", :format=> "hardcopy"},
         {:title=>"Rock Climbing", :genre=>"Lifestyle", :author=>"The Grinch", :year=>"2016", :format=> "hardcopy"}, 
         {:title=>"Stuck In The Well", :genre=>"Mystery", :author=>"Goosebumps", :year=>"2010", :format=> "hardcopy"}, 
         {:title=>"Train Murder", :genre=>"Mystery", :author=>"French Dude", :year=>"1906", :format=> "hardcopy"}, 
         {:title=>"How to code", :genre=>"Mystery", :author=>"unknown", :year=>"2020", :format=> "hardcopy"},
         {:title=>"We love the greeks", :genre=>"History", :author=>"The Romans", :year=>"500", :format=> "hardcopy"}, 
         {:title=>"We went to the moon", :genre=>"History", :author=>"NASA", :year=>"1969", :format=> "hardcopy"}, 
         {:title=>"fashion", :genre=>"History", :author=>"Rupaul", :year=>"2020", :format=> "hardcopy"}]

library = Library.new
# populate library with books
library_array.each do |book_info|
	book = Book.new(book_info[:title], book_info[:author], book_info[:year], book_info[:genre], book_info[:format])
	# add book to library
	library.addBook(book)
end


## Main
# Welcome - get name
puts "Welcome to the Library! What's your name?"
name = gets.chomp.to_s.capitalize

# create a user instance
user = User.new(name)

running = true

system 'clear'

puts "Hi #{name}! What kind of books do you like?"

# #puts genres to choose from
#  puts library.getGenres

# #gets and validates user genre choice
# puts "What genre do you want to browse in?"
# genre_choice = gets.chomp

####testing method to list genre in numbered fashion - put this in a method and store elsewhere? in class? 
genre_choices = []
genre_choices << library.getGenres
# puts genre_choices

counter = 1

genre_choices.each do |genre|
    puts "[#{counter}] #{genre}"
    counter += 1
end

answerchoice = gets.chomp.to_i
until answerchoice >= 1 && answerchoice <= 3
    puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a genre."
    answerchoice = gets.chomp.to_i
end

if answerchoice == 1
    genre_choice = "Lifestyle"
end

if answerchoice == 2
    genre_choice = "Mystery"
end

if answerchoice == 3
    genre_choice = "History"
end

##############put counter in its own method and call it

system 'clear'

# Loop starts here
while running

    
   #shows all books within a genre

   ################need to move while loop - only want to print this if have just chosen genre
   puts "Good choice! Here are the books available in that genre:" ; puts
   library.listBooksByGenre(genre_choice)
   ############Get the books to printout one by one, use tty loading symbol
 

   #gets and validates user book choice properly

   ##############only want to print this if just chosen genre and after printed books available
   puts "What book in #{genre_choice} do you want to borrow? Type the title." ########better method for getting book
   puts "******************************************************"
   puts "Or: type 'quit' to quit program"
   puts "******************************************************"   
   
   chosen_book = gets.chomp #########################Need to equate chosen_book with a book OBJECT


   
   if chosen_book.downcase == 'quit' 
    system 'clear'
      puts "Thank you! See you next time."
      puts
      break
   end
   
   system 'clear'#######################################

   puts "So you'd like to borrow '#{chosen_book}'? (y/n)"

   answer = gets.chomp[0].downcase

   if answer == 'y'

      # borrow book
      # - get the book from library
      borrowed_book = library.getBook(chosen_book)
      # if !borrowed_book means it wasn't a valid title

      if !borrowed_book
         # ask again (return to top of loop)
         system 'clear' ###########################
         puts "I'm sorry - I don't think that book is in our library!"
         puts

         #####Need to fix loop here

      #else puts "please type y or n"

         next ####################does this keep looping back?

      else

        ################need name error handling here
        #if they have already borrowed the book, it tells them its in their account
            # if user.showBorrowedBooksMatch(chosen_book)
            #     puts "you've already borrowed that one!"
            # else
            # end
                                
         # make sure book is available
         if borrowed_book.isAvailable

            # - set book borrowed property on book
            borrowed_book.borrow
            
            # - add book to user's @borrowed_books array
            user.borrowBook(borrowed_book)

            system 'clear'
            puts "Congratulations! You have borrowed this book:"
            puts
            puts "#{borrowed_book}"
            puts
           
            
            else
            puts "I'm sorry. That book is not currently available."
            puts
         end
      end


puts "would you like to see your account status? (y/n)"
answer_status = gets.chomp[0].downcase
if answer_status == "y"
system 'clear'
   puts "Here is your account status:\n"
   puts
   user.display_user_details
   puts
   #############fix loops here
  else "ok cool! what do you want to do?" #need to alter loop here ##############
  end
 end
end


#use all methods

#stop endless looping
#clear terminal output for clarity
#dont autoprint account status - options
#easier way to choose book titles - use number counter - tty prompt
#capitalising titles when choosing
#verify book title choice
#method for if book is borrowed by user, and they try to borrow again, puts they already have it
#view account
#fix quit thing
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