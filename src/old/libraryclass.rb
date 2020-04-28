######## require gems here?

####### attr accessor for user details???

# Library class defines all methods the library can perform
require_relative ('./module.rb')

class Library
	include Options
	
	def initialize
		@library = []	# array of Book
	end

########### not needed???? bc genres has an array in getGenres + can alter next method???
	def genre_choices
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
		genres = []
		@library.each do |book|
			if !genres.include?(book.genre) 
				genres.push(book.genre)
			end
		end
		return genres
	end

	def getBook(book_title)
		@library.each do |book|
			if book.title == book_title
				return book
			end
		end
		# puts "here is your book: #{book_title}"
		return nil
	end
	
######### Need to check if book is available for 
############# This method makes no sense now - argument error
	def listBooksByGenre(genre_choice) #this method needs to take user input of genre
		@library.each do |book| #only want to push books that match genre_choice
			if book.genre.downcase == genre_choice.downcase 
				 puts book
				 puts
			end
		end
	end

######################## Is this method working? it still shows the book but lists as not available
###################### if there are no available books, puts a message and returns to options
	def showAvailableBooks 
		@library.each do |book|
			if book.isAvailable == "Available"
				puts book
			# only show books that are not currently borrowed
			end
		end
	end

	def showAllBooks()
		@library.each do |book|
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
	
	########### delete this if you have it in main app
		def quitmethod 
		# quitinput = gets.chomp[0].downcase
		# if quitinput == "q"
			system 'clear'
			puts "Are you sure you want to quit? Your session data will not be stored. Type y/n"
			answerquit = gets.chomp.downcase #do .chars if still want to do [0]
			puts answerquit
			##############How to resume what they were doing before? options menu again?
			
			until answerquit == "n" && answerquit == "y" ###is this breaking it?
				puts "I dont understand that input. Please type y or n." ###NOT WORKING
			end
				#########################NIFINITE LOOP!!

			if answerquit == "y"
				system 'clear'
				puts "Thank you for visiting the library! See you again soon."
				#puts
				#break #exits program
			

			if answerquit == "n" #else is always the final thing
				# puts "Inside Else statement"
				Options::displayOptions
				#break		
			end 	
		end 
	end
end
	
