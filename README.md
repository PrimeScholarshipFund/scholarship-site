# README

## Set up instructions

To set up Rails on your local machine, follow the [Rails Introduction Guide](https://guides.rubyonrails.org/getting_started.html) through step 3.1 with one change. We use PostgreSQL instead of sqlite, so make sure `postgres --version` reports your version. 

Once Ruby and Rails are successfully installed, you will need to run `bundle install` to install all gems. To configure the database, run `bin/rails db:schema:load` in your terminal window. This will create a development database and a test database.

Then, run `rails s` in your terminal window to start the server, and go to `localhost:3000` to see the landing page. You will want to create a user when you begin work, which you can do at `localhost:3000/sign_up`.

To see all available routes in the application, run `rails routes` in your terminal. 
