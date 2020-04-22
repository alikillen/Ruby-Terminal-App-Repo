#!/bin/bash

# install dependencies from Gemfile
bundle install

# run application
ruby libraryapp.rb


Learning Outcome PRG1002-3.2: In your Ruby programs, you can access any command-line arguments passed by the shell with the ARGV special variable. ARGV is an Array variable which holds, as strings, each argument passed by the shell. Below is a simple example of how it might be used at some point in your app:

# prints a welcome
# allow passing name as an argument
# if name isn't passed in, prompt to ask for it

name = (ARGV.length > 0) && ARGV[0]
if !name
 puts "what is your name?"
 name = gets.chomp
end
puts "Hi #{name}" 

---------

course = (ARGV.length > 0) && ARGV[0]
puts "ARGV is #{ARGV}"
puts "course is #{course}"

# puts "enter your course"
# course = gets.chomp
if course == "fxb"
    puts "executing flex track specific code"
else
    puts "executing fast track specific code"
end

# run this in terminal
# ruby command_line.rb fxb ash rach tom 