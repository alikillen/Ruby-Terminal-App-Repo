require_relative "libraryapp.rb"
require_relative "library.rb"
require_relative "bookclass.rb"


class User
	@username
	@user_id
	@borrowed_books #[array of "book" objects which the User has under his / her name]
end

def display_user_name
    @username = name
    puts name
end

def display_user_details
    puts @username
    puts @user_id
    puts @borrowed_books
end
end