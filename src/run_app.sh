#!/bin/bash

# show dependencies
echo "This app requires:"
echo "colorize"
echo "tty-prompt"

echo "Installing dependencies"
# install dependencies
bundle install

echo "Running library app"
# run app
ruby library_app.rb

#gemfile??

_______________________________
app_name.rb OR main.rb

read somewhere that its as simple as putting the shebang line on top of your file
 "#!/usr/bin/env ruby" and run 'chmod +x filename.rb'
____________________________________________________

 Shell script format:

echo "Welcome to **TERMINAL APP NAME**"

echo "Lets begin the install now"

git clone "https://github.com/YOURGITHUBREPOSITORY"

cd directory

echo "Time to ensure all required gems are installed"

bundle install

echo "All gems have been installed, running application for the first time now"

ruby TERMINALAPP.rb


____________________________________________________
lavanya

Shell script format:
echo "Welcome to **TERMINAL APP NAME**"
echo "Lets begin the install now"
git clone "https://github.com/YOURGITHUBREPOSITORY"
cd directory #app folder, src
echo "Time to ensure all required gems are installed"
bundle install
echo "All gems have been installed, running application for the first time now"
ruby TERMINALAPP.rb


____________________________________________________

Simon Curran
9:38 AM
also,
just regarding the script question earlier

If the script is in the src folder of the app, 
how do htey run that file if the git clone is in the script, meaning they wont even have the file yet

yeah all good

Si
Simon Curran
9:39 AM
if git clone is to go inside the script, they wont even have the script yet

Si
Simon Curran
9:39 AM
i have just included the git clone in the help file

Si
Simon Curran
9:40 AM
yeah ive got git clone outside the script in the help file, then they run the script

im just saying for other people, its misleading


Ty
Tyler Hall
9:40 AM
Yea I've got both Simon, just added both in to cover all bases haha

Si
Simon Curran
9:40 AM
no dont have both tyler

Si
Simon Curran
9:41 AM
cause the user already has the files installed

Si
Simon Curran
9:41 AM
so they will be installing the game again inside the game folder

Si
Simon Curran
9:42 AM
also, command line arguments then,
 so in our script we can ask for the users name, and if they input it then input that into the app, 
 if not, then ask them for their name in the app,

as an example?


_______

# prints a welcome
# allow passing name as an argument
# if name isn't passed in, prompt to ask for it
# ARGV.rb
# ruby ARGV.rb "Varsha"
name = (ARGV.length > 0) && ARGV
puts ARGV
if !name
    puts "what is your name?"
    name = gets.chomp
end
puts "Hi #{name}"
