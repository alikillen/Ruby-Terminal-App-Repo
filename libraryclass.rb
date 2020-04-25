#require gems here?

#attr accessor for user details???


class Library

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

	def putsGenresCounter
	end

	def getBook(book_title)
		@library.each do |book|
			if book.title == book_title
				return book
			end
		end
		return nil
	end
	
	def listBooksByGenre(genre_choice) #this method needs to take user input of genre
		@library.each do |book| #only want to push books that match genre_choice
			if book.genre.downcase == genre_choice.downcase 
				 puts book
				 puts
			end
		end
	end

	def showAvailableBooks #is this method working? it still shows the book but lists as not available
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

	def borrowBook(chosen_book)
		@borrowed_books.push(chosen_book)
		return @borrowed_books
	end


	def returnBook(book_title)
		#remove book from user library array if book matches selected book
	end

end