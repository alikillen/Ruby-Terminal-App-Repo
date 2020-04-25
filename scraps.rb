#####################old code for library app

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
puts "Hi #{name}! Please choose from the genres below:"
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
puts "What genre do you want to browse in?"
genre_choice = gets.chomp

#shows all books within a genre
puts library.listBooksByGenre(genre_choice)

# #gets and validates user book choice
# "What book in #{genre_choice} do you want to borrow?"
# chosen_book = gets.chomp.to_s


#library.showAllBooks

######################old code for book class

class Book	
	attr_reader :title, :author, :year, :genre, :format
	def initialize (title, author, year, genre, format)
		@title = title
		@author = author 
		@year = year
		@genre = genre
		@format = format
		@borrowed = nil
	end

# 	##commented out for test
	def to_s #overridding the to_s function in the class because it will default to putting 
		     #object ID and we want it to put the instance of the object?
		return 	"Title: #{@title}\n"+
			   	"  Author: #{@author}\n"+
				"  Year: #{@year}\n"+
				"  Genre: #{@genre}\n"+
				"  Format: #{@format}\n"+
				"  Borrowed: #{@reserved}"
	end
end



##################old code for library class methods

# require_relative "titles.rb"
#  require_relative "bookclass.rb"
# require_relative "user.rb"

#require gems here?

#attr accessor for user details???

# require_relative './libraryapp'

class Library
	# 	attr_reader @username, @user_id, @borrowed_books
		def initialize
			@library = []	# array of Book
		end
		
		def addBook(book)
			@library.push(book)
		end
		
		def getGenres()
			genres = []
			@library.each do |book|
				if !genres.include?(book.genre) 
					genres.push(book.genre)
				end
			end
			return genres
		end
	
		
		def listBooksByGenre(genre_choice) #this method needs to take user input of genre
			@library.each do |book| #only want to push books that match genre_choice
				puts "book genre: #{book.genre}"
				puts "genre_choice: #{genre_choice}"
				if book.genre.downcase == genre_choice.downcase 
					# puts book
					# booksbygenre.push(book) 
				end
					#used instance variable here because local was giving error
			end
		end
	
		# Books::BOOKS.each{ |hash| chosen_books << hash[:title] if hash[:genre] == chosen_genre }
		
		# def showAvailableBooks()
		# 	@library.each do |book|
		# 		puts book if book.borrowed == #notnil
		# 	# only show books that are not currently borrowed
		# 	end
		
		def showAllBooks()
			@library.each do |book|
				puts book
			end
		end
	
		def BorrowBook(chosen_book)
			@borrowed_books = []
			@borrowed_books.push(chosen_book)
			return @borrowed_books
		end
		
	
	
		# def checkAccount
		# 	return 	"Your library account status:"
		# 		    "  Name: #{@username}\n"+
		# 		   	"  Library card number: #{@user_id}\n"+
		# 			"  Number of books borrowed: #{}\n"+
		# 			"  Books left to borrow: (max 10?) \n"+
					
				
		# 		end
	
	
		def ReturnBook()
	#remove book from user library array if book matches selected book
		end
	
	
	end
	
	
	
	
	
	






###################old code for user class
require_relative "libraryapp.rb"
require_relative "library.rb"
require_relative "bookclass.rb"


class User
	@username
	@user_id
	@borrowed_books #[array of "book" objects which the User has under his / her name]
end

def display_user_name
    @username = name #needs access to user input??
    puts name
end

def display_user_details
    puts @username
    puts @user_id
    puts @borrowed_books
end


class Library
	def initialize
		@library_array = library_array
	def

		def list_books_by_type(input) #listing books by genre or format or availability
			puts "Our Books that match your search:"
		     @library_array.each do |book| # |book| is going to fetch you a book object
			puts "#{book.title}" if book.genre == input
		end		

prompt.yes?







class Library	
	def initialize
		@library_array = [] # A library array that will be a collection of "book" objects
		#along with the number of copies of each book available
	end
	
	def add_book(book_object)
		@library_array << book_object
		#[book1,book2,book3]
	end
	
	def list_all_books
		# puts all elements of the @library_array
	end
	
	def list_books(input) # ( This input string can be list by genre, author, format --> "romance" or "e-book")	
		# logic to iterate over @library_array
		puts "Our Books that match your input"
		@library_array.each do |book| # |book| is going to fetch you a book object
			puts "#{book.name}" if book.genre == input
		end		
	end
	
	def list_genre
		# tty-prompt
		puts "Our Book Genres"
		@library_array.each do |book| # |book| is going to fetch you a book object
			puts "#{book.genre}"
		end			
	end
end	
end # End of class Library

class User
	@name
	@user_id #randomly generate from faker
	@book_list #[array of "book" objects which the User has under his / her name]

	def display_user_details
		puts @name
		puts @user_id
		puts @book_list		
	end
end

@book_list





###############################	
class Library
	def initialize
		@library_hash = Hash.new(0) # A library hash that will be a collection of "book" objects along with the number of copies of each book available
		# {book1 => 2, book2 => 10, book3 => 5}
	end
	
	def list_all_books
	end
	
	def list_books(input) # ( This input string can be list by genre, author, format --> "romance" or "e-book")	
		@genre = ["fiction", "lifestyle", "science", "history"]
		puts @genre #????
	end
end	
end

class User
	@name
	@user_id
	@book_list #[array of "book" objects which the User has under his / her name]
end



#main application!

def initialize_library(library)
    # (if I were the library owner, I would have liked to add books to the library as "book" objects)
        # adding the title, genre, author and year from faker somehow? randomly choosing the genre from 3 available? this will impact account features
        book1 = Book.new("Rome","history","Julius",550,"hardcopy")
        library.add_book(book1)
        library.add_book(Book.new("gardening", "lifestyle", "mary" 1975, "hardcopy"))
        library.add_book(Book.new("cosmos", "science", "carl sagan", 1980, "ebook"))
        # use the Library class to create a collection of Book objects.
    end
    
    library = Library.new # you are constructing a brand new Library Building !!
    

    ###########################PREVIOUS CODE

# class Book
#     attr_accessor :genre, :title, :author, :year, :type
#     @genre = genre
#     @title = title
#     @author = author
#     @year = year
#     @format = format

#     rescue NoMethodError
#         puts "No Method Error!"
#     rescue ArgumentError
#         puts "Argument error!"
#     rescue NameError
#         puts "Name error!"
#     end




#######################PREVIOUS CODE

# class Genre < Book
#     def initialize
#         super("Lifestyle", "breathing is good for you", "everyone", "1999", "hardcopy")
#     end
# end

# class Title2 < Book
#     def initialize
#         super("Lifestyle", "how to cook with vegetables", "me", "2006", "hardcopy" )
#     end
# end

# class Title3 < Book
#     def initialize
#         super("Lifestyle", "intro to rock climbing", "sir fallsalot", "2010", "hardcopy" )
#     end
# end

# class Title4 < Book
#     def initialize
#         super("Mystery", "who's stuck in the well", "goosebumps", "2009", "hardcopy" )
#     end
# end

# class Title5 < Book
#     def initialize
#         super("Mystery", "murder on a train", "french dude", "1960", "hardcopy" )
#     end
# end

# class Title6 < Book
#     def initialize
#         super("Mystery", "how to code", "unknown", "2020", "hardcopy" )
#     end
# end

# class Title7 < Book
#     def initialize
#         super("History", "we love the greeks", "the romans", "500", "hardcopy" )
#     end
# end

# class Title8 < Book
#     def initialize
#         super("History", "we went to the moon", "NASA", "1969", "hardcopy" )
#     end
# end

# class Title9 < Book
#     def initialize
#         super("History", "fashion", "mr. rupaul our hero", "1990", "hardcopy" )
#     end
# end


