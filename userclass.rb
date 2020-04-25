class User
    def initialize (username)
        @username = username
        @user_id = rand(1000)
        #[array of "book" objects which the User has under his / her name]
        @borrowed_books = []    
    end

    def borrowBook(book)
        @borrowed_books.push(book)
    end

    def display_user_name
        @username = name #needs access to user input??
        puts name
    end

    def display_user_details
        puts "User name: #{@username}"
        puts "User library card number: #{@user_id}"
        puts "Book allowance remaining = unlimited"
        puts "Books on loan:"
        @borrowed_books.each do |book|
            puts "  #{book}"
        end
    end
end