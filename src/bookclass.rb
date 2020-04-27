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
		@borrowed = "Currently borrowed - not available in library"
	end
	
	# return book
	def returnBook
		@borrowed = "Available"
	end
	
	# will show book Availability status as "Available" to borrow 
	#is this hardcoded???
	def isAvailable
		return @borrowed == "Available"
	end


	def to_s #overridding the to_s function in the class because it will default to putting 
			 #object ID and we want it to put the instance of the object
		return 	"  Title: #{@title}\n"+
			   	"  Author: #{@author}\n"+
				"  Year: #{@year}\n"+
				"  Genre: #{@genre}\n"+
				"  Format: #{@format}\n"+
				"  Availability: #{@borrowed}" 
				puts 
				#how to get a blank line after? ; puts not working - cant do this in class? or in a file you run
	    end
end