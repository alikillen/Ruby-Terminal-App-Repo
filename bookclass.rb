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
end

# 	##commented out for test
# 	def to_s #overridding the to_s function in the class because it will default to putting 
# 		     #object ID and we want it to put the instance of the object?
# 		return 	"Title: #{@title}\n"+
# 			   	"  Author: #{@author}\n"+
# 				"  Year: #{@year}\n"+
# 				"  Genre: #{@genre}\n"+
# 				"  Format: #{@format}\n"+
# 				"  Borrowed: #{@reserved}"
# 	end
# end

