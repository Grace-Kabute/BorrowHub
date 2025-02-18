# BorrowHub
BorrowHub is a book-lending library prototype built with Rails 8, leveraging its latest improvements for scalability and reduced dependencies.

## Features

* Users can browse available books
* Users can borrow and return books
* Due dates are automatically set to 2 weeks

## Ruby version
ruby -v
ruby 3.3.7 (2025-01-15 revision be31f993d7) [x64-mingw-ucrt]

## Rails version
rails -v
Rails 8.0.1

## Install
## clone repository
git clone https://github.com/Grace-Kabute/BorrowHub.git
cd BorrowHub LIBRARY

bundle install

* after cloning the project, you must run bundle install manually to install all required gems.

## System dependencies
please ensure you have the following installed to run this application:

* PostgreSQL (or modify database.yml for another DB)
* Node.js & Yarn (for asset management)
* ImageMagick (if using Active Storage for book images)

## Database setup
rails db:create db:migrate db:seed

## Runnning the Application
rails server
* open http://localhost:3000 in your browser.

## Running Tests
rails test

## Author
Kabute Grace

...
