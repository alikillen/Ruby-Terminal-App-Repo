# Library class defines all methods the library can perform
require_relative ('./module.rb')

class Library
	include Options
	
	def initialize
		@library = []	# array of Book
		@genre_choices = []
	end

	def showGenreChoices
		puts @genre_choices
	end
	
	def addBook(book)
		@library.push(book)
	end
	
	#if a genre is in the library of books, it will be pushed into the genre choices array
	def getGenres()
		@library.each do |book|
			if !@genre_choices.include?(book.genre) 
				@genre_choices.push(book.genre)
			end
		end
		return @genre_choices
	end

# puts the book from library if the title matches title in library
	def getBook(book_title)
		@library.each do |book|
			if book.title.downcase == book_title.downcase
				return book
			end
		end
		# maybe could puts "here is your book: #{book_title}"
		return nil
	end
	
# each book has its own id which is its index position in array
	def getBookById(index)
		return @library[index]
	end
	
	def listBooksByGenre(genre_choice) #this method needs to take user input of genre
		indexes = []
		@library.each_with_index do |book, index| #only want to push books that match genre_choice
			if book.genre.downcase == genre_choice.downcase
				 indexes.push(index)
				 #BUG HERE - need to print books from 1 not from 0, and error if you type in gibberish 
		          #when choosing a book - because thats index0, it will think you want to borrow title with id of 0
				 puts "Id: #{index}" 
				 puts book
				 puts
			end
		end
		return indexes
	end

# 
	def borrowBook(chosen_book) 
		@borrowed_books.push(chosen_book)
		return @borrowed_books 
	end

# counter method to choose genre by number
	def getBookChoices 
		puts "#{listBooksByGenre} Please type 1, 2 or 3 to choose" 
	
		answerchoice = STDIN.gets.chomp.to_i
		  until answerchoice >= 1 && answerchoice <= 3
			 puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a book."
			 answerchoice = STDIN.gets.chomp.to_i
		  end
		
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
	
########## these methods are not currently being used but i would like to use in future

def showAllBooks()
	@library.each_with_index do |book, index|
		puts "Id: #{index}"
		puts book
	end
end

# this method needs adjusting - it still shows the book but lists as not available
# if there are no available books, puts a message and returns to options
def showAvailableBooks 
	@library.each_with_index do |book, index|
		if book.isAvailable == "Available"
			puts "Id: #{index}" 
						puts book
		# only show books that are not currently borrowed
		end
	end
end
