# require_relative('./bookclass')

# library_array = 
#     [    {:title=>"Breathing", :genre=>"Lifestyle", :author=>"Everyone", :year=>"1999", :format=> "hardcopy"}, 
#          {:title=>"Cooking with Veggies", :genre=>"Lifestyle", :author=>"Me", :year=>"2006", :format=> "hardcopy"},
#          {:title=>"Rock Climbing", :genre=>"Lifestyle", :author=>"The Grinch", :year=>"2016", :format=> "hardcopy"}, 
#          {:title=>"Stuck In The Well", :genre=>"Mystery", :author=>"Goosebumps", :year=>"2010", :format=> "hardcopy"}, 
#          {:title=>"Train Murder", :genre=>"Mystery", :author=>"French Dude", :year=>"1906", :format=> "hardcopy"}, 
#          {:title=>"How to code", :genre=>"Mystery", :author=>"unknown", :year=>"2020", :format=> "hardcopy"},
#          {:title=>"We love the greeks", :genre=>"History", :author=>"The Romans", :year=>"500", :format=> "hardcopy"}, 
#          {:title=>"We went to the moon", :genre=>"History", :author=>"NASA", :year=>"1969", :format=> "hardcopy"}, 
#          {:title=>"fashion", :genre=>"History", :author=>"Rupaul", :year=>"2020", :format=> "hardcopy"}]



# puts "Hi! Welcome to the Library! What's your name?"
# username = gets.chomp.capitalize.to_s
# #input validation needed

# puts "Nice to meet you #{username}! What sort of thing do you like to read?"

# genres = [ 	"Lifestyle", "Mystery", "History" ]

# ##############how do i populate the genres array with genre values from library_app hash?????
# # def getGenres
# #   genres = Array.new
# # #   puts library_array.values if value == :genre
# # #   end
# #       if !genres.include? genre:
# #           genres << genre:
# #     return genres
# # #       end


# # puts getGenres #this is dryer - requires less code without classes?


# system 'clear'
	
# counter = 1

# # Generates menu options - associate genres w numbers
# genres.each do |genre|
#     puts "[#{counter}] #{genre}"
#     counter += 1
# end

# input = gets.chomp.to_i
# until input >= 1 && input <= 3
#     puts "That is not a valid input."
#     input = gets.chomp.to_i
# end


# 	# find the genre associated with the number
#     chosen_genre = genres[input-1]
#     puts chosen_genre
	
# 	# return all hashes whose genres match the chosen_genre
# 	books_in_genre = []
	
     
# # system 'clear'

# #METHOD TO SHOW ALL BOOKS?
# # def showAllBooks()
# #     library_array.each do |book|
# #         puts book
# #     end
# # end

# # puts showAllBooks

# puts "Here's all the books we have under that Genre. What would you like to borrow?"

# library_array.each{ |hash| books_in_genre << hash if hash[:genre] == chosen_genre }
# # puts books_in_genre
# # puts books_in_genre.each :title

# # books_in_genre.each do |element|
# #     puts "[#{counter}] #{element}"
# #     counter += 1
# # end

# p books_in_genre.map {|books_in_genre| books_in_genre.values[0..4]}


# # if input == 1
# #     lifestyle_books = Array.new
# #     lifestyle_books << book if :genre == "Lifestyle" #push them into array if value of genre key is lifestyle
# #     puts lifestyle_books #all the books with lifestyle genre

# # #need counter method for books until tty prompt

# # if input == 2
# #     mystery_books = Array.new
# #     puts mystery_books
# # end

# # if input == 3
# #     history_books = Array.new
# #     puts history_books

# # else puts "not a valid input"
# # end




# # #     title:.each do |title|
# # #         puts "[#{counter}] #{title}"
# # #         counter += 1
# # #     end
    