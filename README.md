# Sneaks
sneaks.herokuapp.com

- An app for sneakerheads to keep track of the shoes in their collection, as well as their current market value
- Ability to view other users' collections
- Other features include release dates for upcoming shoe drops and a sneaker-related news feed

# Installation
- Install Ruby & Rails (5.2.3 versions)
- Install Postgres Database
- Run `bundle install` to install all required gems
- Run `db:create` to create the local Postgres database
- Run `db:migrate` to create the required tables in the the database
- Rub `db:seed` to seed the tables with starting data
- Run `rails server` to start running the local server


# App Features
- Sort sneakers based on price and date when sneaker was added
- Filter sneakers based on brands and release year
- Dynamic price fetching from 3 different sources - StockX, GOAT and Flight Club


# Further Development
- User-to-user chat/message function
- Ability to switch between list and grid views
- Incorporate  subtotal values for collection, e.g amount invested so far, current value of collection, etc.
- Wishlist

# Technologies used
- Ruby
- Javascript
- HTML
- CSS
- Rails Framework
- Postgres Database
- Sass & Bootstrap
- Heroku
- Price-fetching API
