
# requiring relative files
require_relative('./bookclass')
require_relative('./libraryclass')
require_relative('./userclass')
require_relative ('./module.rb')
# require_relative ('./ascii.txt')
include Options

require "colorize"


# create the library
library_array = 
    [    {:title=>"Breathing", :genre=>"Lifestyle", :author=>"Mr. Emmett Windy", :year=>"1999", :format=> "Hardcopy"}, 
         {:title=>"Cooking with Veggies", :genre=>"Lifestyle", :author=>"Gordon Ramsey", :year=>"2006", :format=> "Hardcopy"},
         {:title=>"Rock Climbing", :genre=>"Lifestyle", :author=>"The Grinch", :year=>"2016", :format=> "Hardcopy"}, 
         {:title=>"Stuck In The Well", :genre=>"Mystery", :author=>"Goosebumps McFadden", :year=>"2010", :format=> "Hardcopy"}, 
         {:title=>"Train Murder", :genre=>"Mystery", :author=>"French Dude", :year=>"1906", :format=> "Hardcopy"}, 
         {:title=>"How to Code", :genre=>"Mystery", :author=>"Devops Engineer", :year=>"2020", :format=> "Hardcopy"},
         {:title=>"We Love the Greeks!", :genre=>"History", :author=>"The Romans", :year=>"500", :format=> "Hardcopy"}, 
         {:title=>"We Went to the Moon", :genre=>"History", :author=>"NASA", :year=>"1969", :format=> "Hardcopy"}, 
         {:title=>"Fashion", :genre=>"History", :author=>"Rupaul", :year=>"2020", :format=> "Hardcopy"}]

#generate new instance of library class         
library = Library.new
# populate library with books
library_array.each do |book_info|
	book = Book.new(book_info[:title], book_info[:author], book_info[:year], book_info[:genre], book_info[:format])
	# add book to library
	library.addBook(book)
end
# populate genres in the library
library.getGenres

# Main 
# ascii art


def render_ascii_art
  # File.readlines("ascii.txt") do |line|
  #   puts line
  # end
  puts "    __...--~~~~~-._   _.-~~~~~--...__ ".colorize:green
  puts "  //               `V'                |".colorize:green
  puts " //      Welcome to the Library        | ".colorize:green
  puts "//__...--~~~~~~-._  |  _.-~~~~~~--..... | ".colorize:green
puts "//__.....----~~~~._/ | /_.~~~~----.......|".colorize:green
puts "====================||/====================".colorize:green
puts                     "                   `---`".colorize:green
end



# Welcome - get name

def welcome
  system 'clear'
  render_ascii_art
  puts
  puts "Welcome to the Library! What's your name?".colorize:blue
  name = STDIN.gets.chomp.to_s.capitalize
  return name
end



#def main

  name_from_arg_arr = (ARGV.length > 0) && ARGV
  # puts name_from_arg_arr
  # return
  # person_name = name_from_arg_arr[0]
  # person_name = welcome if !name_from_arg_arr

  #if you didnt get name from argument in CLI, run welcome method
  #if you did, person_name = first element in ARGV array (the name that was parsed in CLI)
  if !name_from_arg_arr
      person_name = welcome
  else 
      person_name = name_from_arg_arr[0]
  end

  # create a user instance
  user = User.new(person_name)

  # finished loop - if options module returns true (aka the user has quit), this will not run
  finished = false

  system 'clear'

  # if arvg has a value, name = argv value, if not, ask this outside of 
  render_ascii_art
  puts
  puts "Hi #{person_name}! Welcome to the library" 
  puts


  # loop
  while !finished
    finished = Options::displayOptions(user, library) 
  end
#end

#main

