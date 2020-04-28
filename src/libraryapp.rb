########## STARTING LOOP HERE?

require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')
require_relative ('./module.rb')
include Options

##### can i store my titles in another place, not main app?
##### require gems here  - bundler, colourize, tty, faker, rubocop, yaml, etc

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
# populate genres in the library
library.getGenres

# Main 

# Welcome - get name

puts "Welcome to the Library! What's your name?"
name = gets.chomp.to_s.capitalize
############# Validate name input so it has no integers, spaces etc?

# create a user instance
user = User.new(name)

######### EXPLAIN THIS = loops running
finished = false
# browseSameGenre = false
# browseDiffGenre = false

system 'clear'

puts "Hi #{name}!" 
puts


############## START OF LOOP
while !finished
  finished = Options::displayOptions(user, library) 
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
