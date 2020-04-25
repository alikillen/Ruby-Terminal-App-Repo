###after they choose a book:
genre_choice = "love"

puts "That's a great choice! I love #{genre_choice} books too. What would you like to do next?"
#put a different lil message depending on book chosen?

options = ["View my account status", 
            "Browse another genre", 
            "Browse available books in same genre",
            "I wanna see all remaining available books in the library!"]

    counter = 1

    options.each do |option|
		puts "[#{counter}] #{option}"
		counter += 1
	end

	answerchoice = gets.chomp.to_i
	until answerchoice >= 1 && answerchoice <= 4
		puts "That is not a valid option I'm afraid! Try entering a number from 1-4."
		answerchoice = gets.chomp.to_i
    end
    
    if answerchoice == 1
        puts "so you want to see your account"
    end

    if answerchoice == 2
        puts "so you want to browse another genre"
    end
    
    if answerchoice == 3
        puts "so you want to browse same genre"
    end

    if answerchoice == 4
        puts "so you want to be a MILLIONARE"
    end


	
    

#     ##########
# puts "Would you like a full list of what else is available in the library? y/n"
# answer = gets.chomp.downcase
# if answer[0] == y
# puts library.showAvailableBooks
# else puts "no worries, let's do something else" #loop them back to another option??
