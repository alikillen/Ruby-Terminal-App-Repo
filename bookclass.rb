class Book	
	attr_reader :title, :author, :year, :genre, :format
	def initialize (title, author, year, genre, format)
		@title = title
		@author = author 
		@year = year
		@genre = genre
		@format = format
		@borrowed = "Available"
	end
	
	# borrow book
	def borrow
		@borrowed = "Not currently available for borrowing"
	end
	
	# return book
	def returnBook
		@borrowed = "Available"
	end
	
	def isAvailable
		return @borrowed == "Available"
	end

# 	##commented out for test
	def to_s #overridding the to_s function in the class because it will default to putting 
			 #object ID and we want it to put the instance of the object?
			 #dont put these on new line to make it clearer to read in terminal??
		return 	"Title: #{@title}\n"+
			   	"  Author: #{@author}"+
				"  Year: #{@year}"+
				"  Genre: #{@genre}"+
				"  Format: #{@format}\n"+
				"Availability: #{@borrowed}" #how to get a blank line after? ; puts not working - cant do this in class? or in a file you run
	   end
end