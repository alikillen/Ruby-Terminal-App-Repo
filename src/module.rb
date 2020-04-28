module Options
    
	def displayOptions(user, library)

		puts "What would you like to do? Type a number to choose."
		puts

		options = [ "View my account status", 
					"Browse books by genre", 
					"Quit"] 

		counter = 1

		options.each do |option|
			puts "[#{counter}] #{option}"
			counter += 1
		end

		answerchoice = gets.chomp.to_i

		# validate answer choice and prompt for valid answer
		# user input validation has been implemented at every stage of the app to handle errors /control flow
		until answerchoice >= 1 && answerchoice <= 3
			puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to select an option."
			answerchoice = gets.chomp.to_i
		end

		# display user details
		if answerchoice == 1
			system 'clear'
			user.display_user_details
			puts

		# see/borrow books
		elsif answerchoice == 2
			system 'clear'
			puts "What kind of books do you like?"
			puts
			# displays array of genres to choose from and prompts user
			puts "#{library.showGenreChoices}" 
			puts "Please type 1, 2 or 3 to choose." 
			# validating input
			user_choice = gets.chomp.to_i
			until user_choice >= 1 && user_choice <= 3 # error handling
				# did not system clear here because users should be able to see what the options are
				# in future I can clear screen and implement "type enter to continue" 
				puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a genre."
				user_choice = gets.chomp.to_i
			end
			genre_choice = getGenreChoice(user_choice)
			handleBookChoice(genre_choice, library, user)
		
		# if answerchoice = 3, calls handleQuit method and parses username info to confirm quitting
		elsif answerchoice == 3
			return handleQuit(user.username)
		end    
		
		return false  # will cause main options loop to run again
	end

	# method to determine user's choice of genre by parsing it answerchoice
	def getGenreChoice(answerchoice)
	  # equates user typing integer as equivalent to genre choice
	  if answerchoice == 1
		genre_choice = "Lifestyle"
			# frequent system clears throughout app to keep output neat for user experience
		system 'clear'
		puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
		puts
	  end

	  if answerchoice == 2
		genre_choice = "Mystery"
		system 'clear'
		puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
		puts
	  end

	  if answerchoice == 3
		genre_choice = "History"
		system 'clear'
		puts "That's a great choice! I love #{genre_choice} books too. Here are the library's books in that genre:"
		puts
	  end
	  return genre_choice #returning genre_choice so I can parse it to next method
	end

	# method to determine which book user wants to borrow by parsing genre_choice, library, and user info
	def handleBookChoice(genre_choice, library, user)
		loop do
			valid_ids = library.listBooksByGenre(genre_choice)

			puts "What book in the #{genre_choice} genre do you want to borrow? Type the Id number."
			puts 
			puts "******************************************************"
			puts "Or: type 'options' to view options menu."
			puts "******************************************************" 
			puts  

			
			chosen_book = gets.chomp 

			system 'clear'

			# borrowing a book! unless they want to go to options, then it will break out of loop
			
			if chosen_book.downcase == "options" 
				return  

			elsif chosen_book.downcase != "options"  
				#defining book_id as a variable here since we will use it a couple times
				book_id = chosen_book.to_i
				# make sure it's a valid id - a book thats actually in the library
				# book id (position of book in library array) allows choosers to choose book by number
				if !valid_ids.include?(book_id)
					puts "Book id #{book_id} is not valid. Please press enter to continue."
					gets
					next
				end
				# lookup book by id
				# get the book from library 
				book = library.getBookById(book_id)
				handle_borrow_book(book, genre_choice, library, user)
				break
			end
		end
	end

	# method to check if the selected book is actually in library and available, handle errors if it is not
	def handle_borrow_book(borrowed_book, genre_choice, library, user)
		#make sure we got a book
		if !borrowed_book
			system 'clear' 
			puts "I'm sorry - I don't think that book is in our library! Maybe check your typing."
			puts
			return
		end
		puts "So you'd like to borrow '#{borrowed_book.title}'? (y/n)"
		answer = gets.chomp[0].downcase 

		while answer != "y" and answer != "n"
			system 'clear'
			puts "Not a valid input! Please type y or n to confirm if borrowing."
			puts
			answer = gets.chomp[0].downcase 
		end      

		if answer == "n"
			return
		elsif answer == "y"

			# make sure book is available
			if borrowed_book.isAvailable
				# - set book borrowed property on book
				borrowed_book.borrow
				# - add book to user's @borrowed_books array
				user.borrowBook(borrowed_book)
				system 'clear'
				puts "Congratulations! You have borrowed this book:"
				puts
				puts "#{borrowed_book}"
				puts
			else
				puts "I'm sorry. That book is not currently available."
				puts
			end
		end
	end
	
	# method to confirm quit and exit program
	def handleQuit(name)
		system 'clear'
		puts "Are you sure you want to quit? Your session data will not be stored. Type y/n."
		answerquit = gets.chomp.downcase 
	
		until answerquit == "n" or answerquit == "y" 
			puts "I dont understand that input. Please type y or n."
			answerquit = gets.chomp.downcase 
		end
		
		if answerquit == "y"
			system 'clear'
			puts "Thank you for visiting the library #{name}! See you again soon."
			return true
				
		elsif answerquit == "n"
			system 'clear'
			return false
		end 
	end
end

