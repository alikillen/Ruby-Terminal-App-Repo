# User class defines all methods the user can perform
class User
    attr_reader :username
    def initialize (username)
        @username = username
        @user_id = rand(1000)
        #[array of "book" objects which the User has under his / her name]
        @borrowed_books = []    
    end

    def borrowBook(book) 
        @borrowed_books.push(book) 
    end

    def display_user_details 
        puts "Here is your account status:"
        puts
        puts "User Name: #{@username}"
        puts "User Library Card Number: #{@user_id}"
        # counter to count books borrowed needed here maybe, or in future have a method that limits books allowed
        puts "Book Allowance Remaining = currently unlimited"  
        puts
        puts "Books Borrowed:"
        puts
        @borrowed_books.each do |book|
            puts "  Title: #{book.title}\n" +
                 "  Author: #{book.author}"
            puts
        end
    end

######## not currently using these methods - may finish and run in future

    # allows the user to return a book from their account back into the library
    def returnBook #(book_title)
        #remove book from borrowed books - this should set book as avail?
        #set book as available
    end

    ############ do i need this method?
    def display_user_name
        @username = name
        puts name
    end

end
