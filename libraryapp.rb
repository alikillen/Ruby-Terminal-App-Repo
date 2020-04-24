# require_relative "bookclass.rb"
# require_relative ('./library')
# require_relative "titles.rb"
# require_relative "features.rb"
# require_relative "user.rb"

require_relative('./bookclass')
require_relative('./library')
# require_relative('./titles') #can i store my titles in another place, not main app?
#require gems here  - bundler, colourize, tty, faker, etc

#how do i get the methods to interact w user input


puts "Welcome to the Library! What's your name?"

name = gets.chomp.to_s.capitalize

# until name = string
#     puts "that isn't a valid name, please don't use numbers in your name!"
# end
puts "Hi #{name}, welcome to the Library! Please choose from the genres below:"
###################################


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


# create the library
library = Library.new

# populate library with books
library_array.each do |book_info|
	book = Book.new(book_info[:title], book_info[:author], book_info[:year], book_info[:genre], book_info[:format])
	# add book to library
	library.addBook(book)
end

#puts genres to choose from
puts library.getGenres

#gets and validates user genre choice
# genre_choice = gets.

#shows all books within a genre
# puts library.booksbygenre

#gets and validates user book choice


#library.showAllBooks