module Options
    
	def displayOptions(user, library)

		puts "What would you like to do? Type a number to choose."
		puts

		options = [ "View my account status", 
					"Browse books by genre", 
					"I want to quit"] 

		counter = 1

		options.each do |option|
			puts "[#{counter}] #{option}"
			counter += 1
		end

		answerchoice = gets.chomp.to_i

		# validate answer choice and prompt for valid answer
		until answerchoice >= 1 && answerchoice <= 3
			puts "That is not a valid option I'm afraid! Try entering a number from 1-3."
			answerchoice = gets.chomp.to_i
		end

		# display user details
		if answerchoice == 1
			puts "Here is your account status:"
			puts
			user.display_user_details
			puts

		# see/borrow books
		elsif answerchoice == 2
			puts "What kind of books do you like?"
			puts
			# displays array of genres to choose from and prompts user
			puts "#{library.showGenreChoices}" 
			puts "Please type 1, 2 or 3 to choose." 
			# validating input
			user_choice = gets.chomp.to_i
			until user_choice >= 1 && user_choice <= 3 ####error handling - begin rescue block??
				puts "That is not a valid option I'm afraid! Try entering a number from 1-3 to choose a genre."
				user_choice = gets.chomp.to_i
			end
			genre_choice = getGenreChoice(user_choice)
			handleBookChoice(genre_choice, library, user)
		
		# quit
		elsif answerchoice == 3
			return handleQuit(user.username)
		end    
		
		return false  # will cause main options loop to run again
	end

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
	  return genre_choice
	end

	def handleBookChoice(genre_choice, library, user)
		loop do
			valid_ids = library.listBooksByGenre(genre_choice)

			puts "What book in the #{genre_choice} genre do you want to borrow? Type the Id number."
			puts 
			puts "******************************************************"
			puts "Or: type 'options' to view options menu"
			puts "******************************************************" 
			puts  

			############ GEM - Get the books to printout one by one, use tty loading symbol? prints/sleeps
			############### NEED FURTHER VALIDATION of input if it is going to be typed by user?
			chosen_book = gets.chomp 

			system 'clear'

			# borrowing a book!
			# validate that chosen_book is a real title otherwise route back - use method below?
			if chosen_book.downcase == "options" ####################BE ABLE TO TYPE o? #want this method after n confirm book
				return  

			elsif chosen_book.downcase != "options"  
				book_id = chosen_book.to_i
				# make sure it's a valid id
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

	def handle_borrow_book(borrowed_book, genre_choice, library, user)
		#make sure we got a book
		if !borrowed_book
			system 'clear' 
			puts "I'm sorry - I don't think that book is in our library! Maybe check your typing."
			puts
			return
		end
		puts "So you'd like to borrow '#{borrowed_book.title}'? (y/n)"
		answer = gets.chomp[0].downcase ##############REMOVE [0]

		while answer != "y" and answer != "n"
			puts "Not a valid input, please type y or n"
			puts
			answer = gets.chomp[0].downcase ##############REMOVE [0]
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
	
	def handleQuit(name)
		system 'clear'
		puts "Are you sure you want to quit? Your session data will not be stored. Type y/n"
		answerquit = gets.chomp.downcase #do .chars if still want to do [0]
		##############How to resume what they were doing before? options menu again?

		until answerquit == "n" or answerquit == "y" ###is this breaking it?
			puts "I dont understand that input. Please type y or n."
			answerquit = gets.chomp.downcase #do .chars if still want to do [0]
		end
		

		if answerquit == "y"
			system 'clear'
			puts "Thank you for visiting the library #{name}! See you again soon."
			return true
			#puts
			#break #exits program

		
		elsif answerquit == "n" #else is always the final thing
			# puts "Inside Else statement"
			return false
			#break		
		end 
	end
end

