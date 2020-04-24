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


