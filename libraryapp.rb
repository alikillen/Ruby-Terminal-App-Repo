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

puts "Hi #{name}! Please choose from the genres below:"

#puts genres to choose from
 puts library.getGenres

#gets and validates user genre choice
puts "What genre do you want to browse in?"
genre_choice = gets.chomp

# Loop starts here
while running
    
   #shows all books within a genre
   library.listBooksByGenre(genre_choice)
   puts "Quit"

   #gets and validates user book choice
   puts "What book in #{genre_choice} do you want to borrow? Type the title."
   chosen_book = gets.chomp
   
   if chosen_book.downcase == 'quit' 
      break
   end
   
   puts "Would you like to borrow #{chosen_book}? (y/n)"

   answer = gets.chomp[0].downcase

   if answer == 'y'
      # borrow book
      # - get the book from library
      borrowed_book = library.getBook(chosen_book)
      # if !borrowed_book means it wasn't a valid title
      if !borrowed_book
         # ask again (return to top of loop)
         puts "I'm sorry - I don't recognise that book title."
         next
      else
         # make sure book is available
         if borrowed_book.isAvailable
            # - set book borrowed property on book
            borrowed_book.borrow
            # - add book to user's @borrowed_books array
            user.borrowBook(borrowed_book)
            puts "Congratulations! You have borrowed: #{borrowed_book}"
         else
            puts "I'm sorry. That book is not currently available."
         end
      end
   end


   puts "Here is your account status:"
   user.display_user_details

end

puts "Thank you! See you next time."


#use all methods

#stop endless looping
#clear terminal output for clarity
#dont autoprint account status - options
#easier way to choose book titles - use number counter - tty prompt
#verify book title choice
#view account
#fix quit thing
#more conditional control structures
#validate input
#loops
#error handling and testing
#update docs/diagrams, help file etc
#trello
#gems
#comment through code explaining logic and plan ppt