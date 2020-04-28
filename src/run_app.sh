#!/bin/bash


# show dependencies
echo "This app requires these gems:"
echo "colorize"
echo "tty-prompt"


echo "Installing dependencies (gems)"
# install dependencies
bundle install

echo "Running library app"

echo "Before we start, what's your name?"

read -p "=> " user_name
echo ""
read -p "Great, continue to the Library? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

echo ""
echo "Running library app for the first time now!"
echo ""
echo "----------------------------------------"

sleep 1

# run app
ruby libraryapp.rb $user_name
