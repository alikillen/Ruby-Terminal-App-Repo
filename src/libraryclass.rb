######## require gems here?

####### attr accessor for user details???

# Library class defines all methods the library can perform
require_relative ('./module.rb')

class Library
	include Options
	
	def initialize
		@library = []	# array of Book
		@genre_choices = []
	end
	
############# not needed? if not called in any files
	def showGenreChoices
		puts @genre_choices
	end
	
	def addBook(book)
		@library.push(book)
	end
	
	def getGenres()
		@library.each do |book|
			if !@genre_choices.include?(book.genre) 
				@genre_choices.push(book.genre)
			end
		end
		return @genre_choices
	end

	def getBook(book_title)
		@library.each do |book|
			if book.title.downcase == book_title.downcase
				return book
			end
		end
		# puts "here is your book: #{book_title}"
		return nil
	end
	
	def getBookById(index)
		return @library[index]
	end
	
######### Need to check if book is available for 
############# This method makes no sense now - argument error
	def listBooksByGenre(genre_choice) #this method needs to take user input of genre
		indexes = []
		@library.each_with_index do |book, index| #only want to push books that match genre_choice
			if book.genre.downcase == genre_choice.downcase
				 indexes.push(index)
				 puts "Id: #{index}" 
				 puts book
				 puts
			end
		end
		return indexes
	end

######################## Is this method working? it still shows the book but lists as not available
###################### if there are no available books, puts a message and returns to options
	def showAvailableBooks 
		@library.each_with_index do |book, index|
			if book.isAvailable == "Available"
				puts "Id: #{index}"
				puts book
			# only show books that are not currently borrowed
			end
		end
	end

	def showAllBooks()
		@library.each_with_index do |book, index|
			puts "Id: #{index}"
			puts book
		end
	end

######################### watch this method
	def borrowBook(chosen_book) 
		@borrowed_books.push(chosen_book)
		return @borrowed_books ###do i need to return this?
	end

################# method to determine if book is borrowed already when they are browsing 
################# (any books not avail will print special msg saying they have it)
  def isBorrowed
  end


################## Same kind of counter method as choosing genre - POTENTIALLY DELETE AND JUST TYPE TITLES???
	def getBookChoices 
		puts "#{listBooksByGenre} Please type 1, 2 or 3 to choose" 
	
		answerchoice = gets.chomp.to_i
		  until answerchoice >= 1 && answerchoice <= 3
			 puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a book."
			 answerchoice = gets.chomp.to_i
		  end
		
######### need input validation and error handling here
		if answerchoice == 1
			chosen_book = "" #chosen book will be book object from listed books in chosen genre
			system 'clear'
			puts "Cool!"
		end
		
		if answerchoice == 2
			chosen_book = ""
			system 'clear'
			puts "Cool!"
		end
		
		if answerchoice == 3
			chosen_book = ""
			system 'clear'
			puts "Cool!"
		end

	end

end
	
