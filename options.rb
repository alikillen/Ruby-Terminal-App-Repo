###after they choose a book, view account status, etc etc - loop back to this method of options


############################################################


require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')


#### both methods here need these to loop back around to not kill program
def browseDiffGenre
    puts "diffgenre"
end

def browseSameGenre
    puts "samegenre"
end

############  needs to be called every time they input? 
#########  how to break loop/exit program if called?
########## calling a quitmethod anywhere in program so when user types quit + confirm they quit program?
########## quit must be false to start program? 

def QuitMethod 
    # quitinput = gets.chomp.downcase
    # if quitinput[0] == "q"
        system 'clear'
        puts "Are you sure you want to quit? Your session data will not be stored. Type y/n"
        answerquit = gets.chomp.downcase
        if answerquit == "y"
            system 'clear'
            puts "Thank you for visiting the library! See you again soon."
            puts
        end

    ##############How to resume what they were doing before? options menu again?
        if answerquit == "n"
            puts "ok lets loop back around " 
            puts 
            else puts "I dont understand that input. Please type y or n."
        end 
    end 



def displayOptions
   
    #### example
  genre_choice = "love" 

  puts "That's a great choice! I love #{genre_choice} books too. What would you like to do next?"
  

  options = [ "View my account status", 
            "Browse another genre", 
            "Browse available books in same genre",
            "I wanna see all remaining available books in the library!",
            "I want to quit"] #or say type quit to quit?

    counter = 1

    options.each do |option|
        puts "[#{counter}] #{option}"
        counter += 1
    end
    
	answerchoice = gets.chomp.to_i
	until answerchoice >= 1 && answerchoice <= 5
		puts "That is not a valid option I'm afraid! Try entering a number from 1-4."
		answerchoice = gets.chomp.to_i
    end
    

    if answerchoice

    if answerchoice == 1
        puts "Here is your account status:\n"
        puts
        user.display_user_details
        puts
    end

################# Make sure these options loop correctly
    if answerchoice == 2
        browseDiffGenre
    end
    
    if answerchoice == 3
        browseSameGenre
    end

    if answerchoice == 4
        library.showAvailableBooks
    end

    if answerchoice == 5
        QuitMethod
    end

end
end

displayOptions
	
    


