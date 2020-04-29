## **Installation Instructions**

Follow these instructions to download and install Ruby on your computer.

Download and unzip the project files onto your computer.

Now navigate to the folder you want to install the game in terminal by running:

cd ~/ *path to folder where you want to install app*
Clone the files from this repository by copying the following into command line:
git clone https://github.com/alikillen/Ruby-Terminal-App-Repo

If you have Bundler installed already, skip this step, otherwise install Bundler with:

gem install bundler

From here, navigate to the source folder of the cloned repository by copying:

cd ruby-terminal-app-repo/src

Now copy this into terminal to run the app:
./run_app.sh

This will install gems needed using bundler - colorize and tty-progressbar

## **System/Hardware Requirements:**

I'm pretty sure you could run this on a calculator....but let's just say you need a machine with an OS that can download and install ruby and run ruby files/terminal apps. Definitely no fancy graphics card or special drivers needed here.


## **Current Features:**

- user can see their options in a menu
- 1st option: view account status - user can see their account with their username + library ID + list of books borrowed, then returns to options menu
- 2nd option: browse books by genre - user can choose a genre to browse, choose a book from that genre to borrow after confirming, and return to options menu
- 3rd option: quit - user can quit the application after they confirm they want to quit.



Planned Future Features:

- return book feature
- putting non available books "on hold" until they are available to borrow
- late fees option
- more types of formats (ebook, audiobook etc)
- more types of genres and bigger library of books
- generating book names, authors with faker gem
- randomly generate library card number with faker
- tells user they have already borrowed a book if they choose it again
- login feature so that the app can work with more than 1 user - somehow storing their username/password in a database
- adding emoji gem maybe
- printout list of all books feature
- printout list of all remaining available feature
- speech to text accesibility feature
- more gems to add more features - more loading animations and colouring, using tty to refine menus
- library of alexandria 'skin' to let the user browse and borrow ancient scrolls lost to history

Current bug:
- sometimes allows you to choose gibberish book in lifestyle category if you type incorrect input.because strings = 0 when converted to integers and the book ID is getting the position of the book object in array - so if you input gibberish when choosing a lifestyle book, it will take it as 0 and as if you are borrowing the first book in that category "breathing". significant bug to be fixed but for now i will trust that users dont break it and that they enter 0.
