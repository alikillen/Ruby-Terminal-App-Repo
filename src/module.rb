# require_relative('./bookclass')
# require_relative('./libraryclass')
# require_relative('./userclass')
# require_relative ('./libraryapp.rb')

####delete as many options


#
module Options
    module_function

def displayOptions
  
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
      until answerchoice >= 1 && answerchoice <= 3
        puts "That is not a valid option I'm afraid! Try entering a number from 1-3."
        answerchoice = gets.chomp.to_i
        end
        
        if answerchoice == 1
            puts "Here is your account status:"
            puts
            user.display_user_details
            puts
        end
    
    ################# Make sure these options loop correctly
        if answerchoice == 2
            libraryapp.choose_genre
        end
        
        if answerchoice == 3
            library.quitmethod
        end
    
    end
end