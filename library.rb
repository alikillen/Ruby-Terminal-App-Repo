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
		booksbygenre = []
		@library.each do |book| #only want to push books that match genre_choice
			if book.genre == genre_choice 
			   then booksbygenre.push(book) 
				#used instance variable here because local was giving error
		end
		print booksbygenre
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

	def BorrowBook
		@borrowed_books = []
		@borrowed_books.push(chosen_book)
	end
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





