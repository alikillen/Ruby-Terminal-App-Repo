# User class defines all methods the user can perform
class User
    def initialize (username)
        @username = username
        @user_id = rand(1000)
        #[array of "book" objects which the User has under his / her name]
        @borrowed_books = []    
    end

    

################## this method is duplicated in libraryclass
################## will this method be affected by chosen_book being an object
    def borrowBook(book) 
        @borrowed_books.push(book) 
    end

############ do i need this method?
    def display_user_name
        @username = name
        puts name
    end

############### dont put availability when its already borrowed 
    def display_user_details 
        puts "User name: #{@username}"
        puts "User library card number: #{@user_id}"
        puts "Book allowance remaining = unlimited"
        puts "Books borrowed:"
        puts
        @borrowed_books.each do |book|
            puts "  #{book}"
        end

################# go to OPTIONS menu method after displaying acct details
    end

################### FINISH AND PROGRAM THIS METHOD IF TIME TO ADD FEATURE

    # allows the user to return a book from their account back into the library
    def returnBook #(book_title)
        #remove book from borrowed books - this should set book as avail?
        #set book as available
    end

end