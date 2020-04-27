
 # This criterion is linked to a Learning OutcomePRG1002-3.2: 
# **Utilises** command line arguments in a simple program
# for reference : https://www.thoughtco.com/command-line-arguments-2908191

# prints a welcome
# allow passing name as an argument
# if name isn't passed in, prompt to ask for it
name = (ARGV.length > 0) && ARGV
puts ARGV
if !name
    puts "what is your name?"
    name = gets.chomp
end
puts "Hi #{name}"  
   
   
   
   
   
   
   
   
   ################need name error handling here
        #if they have already borrowed the book, it tells them its in their account
            # if user.showBorrowedBooksMatch(chosen_book)
            #     puts "you've already borrowed that one!"
            # else
            # end

#each feature called w method?
#validation methods
#getting chosen genre
#adding book to account hash
#removing/returning book from account hash

#need MODULES?

#require methods to validate input
#dont allow to borrow the same book twice
#use colourise gems


#####BOOKS
#generate books randomly by faker?

#define book class
#books have genre and type subclasses/inheritance
#subclasses of genre 1 2 3 4 5 and type ebook, audiobook, phsical book all have attributes that include:
#book author, book title, book year, book cost?

# do books only have genre and type and the rest is subclasses?