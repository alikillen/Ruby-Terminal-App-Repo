Write TWO status updates on your application. You must write a status update when:
- you significantly change a feature or your implementation plan at any point

- encounter a significant issue, challenge or roadblock
- are halfway through implementing the features
- prior to / after testing the application
--------
You should submit these logs throughout the course of developing your application.

Each status report should be between 100 - 200 words.

The Development Log should be written in markdown and placed in a file named development-log.md in the root of your source control repository. Ensure you put the date of the log at the top of each log entry.

Please send your log to your educator as a markdown file as you complete them. This is so we can provide you with feedback.


Development Log!

Welcome to the madness...

Key Status Update 1: Day 5 - 24/04/20

  - This was a key day bc I talked to Janel about classes, subclasses, how to populate the data into the library class. Wrote some essential methods for everything the library needed to do. Got a clearer idea of how to start coding basically.

Key Status Update 2: Day 8 - 27/04/20
 - Really frustrating day as I was trying to create an options menu but kept running into issues making it interact with the control flow. Lavanya and Varsha helped me with creating the options menu and I made it into a module. Tried to make everything in the libraryapp into methods to run them from the options menu but it broke everything so had to figure it out the next day with Janel.


If you want the blow-by-blow, here are my daily notes:

Day 1 - 20/04/20

- drafted up the control flow diagram
- sent idea to educators for approval. Many initial features considered for inclusion into the library: users can list books by genre, maybe 5 genres, they can list books by type (ebook, audiobook, hardcopy), they can borrow books but have a limit of 10 books allowed in their account, can return books, can view their account status, maybe multiple users with login names with login details stored in a seperate file so library can remember people's account status, etc
- drafted setup of trello space
- created docs in folder
- talked to lavanya about idea and she made suggestions for how to keep it simple


Day 2 - 21/04/20 (add pics etc proof)
- idea approved by Janel and she made suggestions for keeping it simple
- decided what is MVP necessary and what is additional - decided on simple features to begin with - no "hold" feature on non available vs available books, no multiple users, less genres, only 1 type of books for now (hardcopy)
- did first version of digital control flow diagram, but this will change as I add more features
- chatted one on one to Varsha and Lavanya about my idea and clarified user stories/main features
- got some clarity on docs and implementation plan: readme is like a bible, implementation plan is basically trello, lots of docs not needed but they are specified in rubric
- finished setup of trello space, but this will change as I develop the app
- talked to Lavanya and Varsha about app idea, key features, user stories, how i should keep it simple
- wrote up basic software development plan markup file, this will continue to change and be updated
- updated the log
- first git commit

Day 3 - 22/04/20
- Varsha went over deliverables section on canvas - we previously couldnt see this - this made what documents required easier - I had previously gone over the rubric and made 4 markdown files: development-log, help, testing (for scripts), software development log (the main readme). Need to have all these in general readme.md file or linked to from that file. makes it clearer!
- git review
- started writing code and defining classes
- had two talks one on one with Varsha about classes I'll be using, how to populate data 
  
Day 4 -23/04/20
- researched about how to populate my data
- read about YAML


Day 5 - 24/04/20

- Talked to Janel about classes, subclasses, how to populate the data into the library class
- talked about how to write methods for everything the library needed to do - get those first then add sprinkles
- talked about using tty prompt for getting user input
- got a clearer idea of how to start coding basically
- having trouble coding the methods - listing books by genre

- thoughts on using classes
  - why bother with classes? the app's data structure is simple enough to use methods maybe? Essentially its moving data between two arrays of hashes (library and user). writing methods for manipulating data in classes has been harder for me to understand. maybe this app is not a great use case for classes as it doesnt have dozens of methods that require namespacing
- tried abandoning classses and writing spaghetti code to just get something that worked
- got further than i had the whole day - this might be the best chance i have to complete the assessment

Day 6 - 25/04

  - another help session with Janel helped me better understand classes
  - they are DRYer than spaghetti code (having to iterate over array of hashes again and again) but not necessarily less lines of code
  - my main issue yesterday was understanding how to write methods in classes - I kept trying to use instance variables in methods when they cant be used outside of their classes (but arent the methods in the classes?)
  - will have another go with classes today to try to get basic functionality working
  - at least after this assessment I will understand classes! Maybe. hopefully.
  - the neighbours have chosen today to build a new deck with loud tools. adapting to this new development.
  - spent like 2 hours angrily eating grapes and looking for a bug until i realised i was running the wrong file #winning
- breakthrough - basic methods now working, adding menu options and input, finetuning output, adding control flow and trying to get everything to print to terminal in the right order etc. feeing better now that its mostly working!
- fine tuning user input validation and control flow (loops etc) to get the essential methods/outputs flowing nicely - just need to write an options method - tomorrow I'm going to try to break everything and do some error handling.

Day 7 - 26/04
- D-day - gotta get this thing actually working!
- main methods are ok, just need to setup the control flow so everything runs at the right time, then do error handling etc, and gems. so still lots to do
- learned about guard clauses which are super helpful for preventing nested conditionals
- tried to make a method where it would print out a number beside each genre choice and you could input the number and choose a genre that way. I had done similar thing before but couldnt get it to work here. the number input worked, but i couldnt get it to display right. leaving it for now, waste of time. perhaps can change later with tty prompt. need to get functionality before looking pretty. broken everything, now need to put it back together
- need to majorly clean up control flow so that nothing breaks the app
- redrew control flow diagram which helped me understand what I needed to do
- talked to other students on discord about how much of a steep learning curve + timeframe this is which made me feel better! at least I know I'm learning haha
- https://www.thoughtco.com/nameerror-uninitialized-2907928 -----> ALL METHODS MUST HAVE LOWERCASE! this explains a couple things
- i have learned to love error messages
- i have learned it helps to keep code neat and indent - otherwise you keep getting errors because of where your "end" is - got this many times
- methods make things easy because you can just call them in your main app - keeps things neat + dry

Day 8 - 27/04/20

- unbroke things i broke last night in terms of control flow
- taked to lavanya and she helped me fix the quit method and options menu
- if i can get control flow, error handling, and gems done by 5pm i should be good to go to fix docs+submit
- concerned about the amount of coffee I've been drinking; "CCC" is my new motto (coding, coffee, crying)
- learned that MODULES are useful because thats how you can run methods inside a class - if you put methods in a module and include them in the class - can reference the method in other class methods

- well, finishing by 9pm isnt going to happen - trying to do an options menu basically broke everything, i did get really close to it this 
- so now im going to unbreak everything and do a simpler version which will hopefully be functional, and spend tomorrow adding gems, error handling, etc. docs are nearly done but will have to polish those off tomorrow too


Day 9 - 28/04/20

- Janel helped me with turning the options menu into the main control flow of the app - everything is called from there basically, so i just call that module into my main app
- I was having trouble making everything loop around but janel helped with cleaning up my code, making things into methods that can easily be called inside the options module so that things are way easier to understand and so there are no major bugs and nothing that kills the app
- fixed a couple minor bugs
- error handling = validation - there are many points in the app that effectively validate user input
- discovered last minute bug - why does the books that you have borrowed print out the title and author and then print out the whole book object? trying to find out why - answer is i put a puts where it shouldnt have been!
- added a couple of things for user clarity in input error messages
- put system clears where needed and removed a couple - ie before re-choosing an option after an invalid input
- installed gems to colorize some output and to have a loading bar when it loads your account status
- simon helped me with command line arguments and making script file
- 