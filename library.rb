# require_relative "titles.rb"
# require_relative "bookclass.rb"
# require_relative "user.rb"

#require gems here?

class Library
	def initialize
		@library = []	# array of Book
	end
	
	def addBook(book)
		@library.push(book)
	end
	
	# def booksByGenre(genre) #this method needs to take user input of genre
	# 	@library.each do
	# end
	
	def getGenres()
		genres = []
		@library.each do |book|
			if !genres.include?(book.genre) 
				genres.push(book.genre)
			end
		end
		return genres
	end
	
	def showAvailableBooks()
		# only show books that are not currently borrowed
	end
	
	def showAllBooks()
		@library.each do |book|
			puts book
		end
	end

	def returnbook()

	end


	end
#end




