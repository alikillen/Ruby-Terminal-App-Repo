# Software Development Plan

## Statement of Purpose and Scope

### **Purpose:**

The purpose of this app is for the user to interact with and enjoy browsing a virtual library collection.

The problem this app allows users to solve is unorganised library collections and to enjoy library services.

I am developing it because I love libraries. I am a longtime user of my local library's website and associated apps, so I am familiar with what users need from this kind of service. I would love to work on improving these kinds of public service systems in the future so that everyone has better access to and understanding of library resources. Developing this app is also a great way for me to learn more about Ruby obviously.

The target audience is library users or anyone that loves Ruby terminal apps. Or anyone that loves marking them!

A member of the target audience will use the app by opening the app and following the prompts and navigating the features.

### **Scope:** 

Right now the scope of the app allows users to interact with a menu browse books by genre, choose a book to borrow, borrow a book, and check their account/borrowed books.

I am looking to expand the scope of the app in the future by adding several other features that can be found in my trello board under additional features and in the help file. 

### **Features**

**User Story/Feature - Choose Genre to Browse:**

This feature is implemented after the user is welcomed to the library app, and allows the user to choose from a list of genres supplied by the library app. The genres will be printed out with a number alongside them. After the users choose their number that corresponds to their chosen genre, this input is validated. After the user input has been validated, it will output a list of books available to borrow that are part of the chosen genre.

This feature will require input validation

It will also require error handling

**User Story/Feature - Navigate options menu**
As a user I can see the options menu at key stages throughout the app

**User Story/Feature - Browse by Genre**
After the user chooses 2 in the options menu, they will be asked to choose a genre to browse. There are currently only 3 genres.

**User Story/Feature - Choose Book to Borrow:**

This feature allows the user to choose a book to borrow after they have viewed the books within their chosen genre. Similarly to how the user chooses a genre, they will see a list of numbered books to choose from, with each book featuring a title, author and year of publication. Once they choose a book and this input is validated,

**User Story/Feature - Borrow Another Book:**

After the users have borrowed a book, they will have the option to choose another book or check their account status. If they choose to borrow another book, the program will prompt them as to whether they want to borrow a book from the same genre or from a different genre. 

The user now enters a conditional loop:
If their choice is the same genre, the chosen_genre variable remains the same and it will print out the options within that genre again. If not, the user returns to the choose genre part.


**User Story/Feature - Check Account Status:**

If the user does not want to borrow another book after they have borrowed their initial book, they have the option to check their account status. If they choose to, this outputs a list of details to the terminal: the user's name, [[[maybe[[[[[[[[their library card number, what books they have borrowed, books remaining to borrow and any pending late fees.


**User Story/Feature - Return Books:**

Once the user has chosen to printout their account status, they will see their account and what books they have borrowed, and they will also have the option to return books to the library that have been borrowed. To do this they specify which number book in their account they would like to return and after they select it, it is removed from their account hash and will no longer display in their account as borrowed if they bring up their account status in the same session.

See the powerpoint for overview of logic for each feature.



### **User Interaction and Experience**

The user will find out how to interact with and use each feature after being directly prompted by the program. The user will interact with the program after being prompted by entering numbers to choose a genre, number to choose a book to borrow, y/n when asked to confirm borrowing a book or quitting, etc.

Each step of input will be validated to handle errors(aka choosing genre, choosing book, check account status, navigating options menu), so that if they make the wrong selection (i.e enter a letter instead of a number when choosing genre) the program will prompt them to make the correct input. 

The application will be designed to handle errors in a graceful way without breaking the program. The nature of the error will printout so that the user has an idea of what is going wrong and how to fix it (aka make the correct input).

### **Control Flow Diagram**




### **Implementation Plan**

Used trello to plan app flow and features.

https://trello.com/invite/b/kTE7BmL1/9e2de433ba65194f8a8c319e4f264c64/alison-killen-t1a2-implementation-plan

Trello board in progress:

![trello](./trello.png)

### **Status Updates**

See development log for status updates and daily notes.