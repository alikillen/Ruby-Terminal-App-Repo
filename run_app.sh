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