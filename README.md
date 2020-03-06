Module One Final Project 
Command Line Application
========================

In this project We will be working in a Command Line Crud app that uses a database to persist information. Our objective with this app is to demonstrate all the skills we have learned in module one:

---

- Ruby
- Object Orientation
- Relationships (via ActiveRecord)
- Problem Solving (via creating a Command Line Interface (CLI))


Developer Setup

Install Ruby 2.3. (It is suggested to use a Ruby version manager such as rbenv and then to install Ruby 2.3).
Install Bundler to manager dependencies: gem install bundler
Setup the database: bundle exec rake db:migrate
Start the application: bundle exec rails s
Commands
bundle exec rake lint - Run the full suite of linters on the codebase.
bundle exec guard - Runs the guard test server that reruns your tests after files are saved. Useful for TDD!
bundle exec rake security - Run the suite of security scanners on the codebase.
bundle exec rake ci - Run all build steps performed in Travis CI.
Deployment Instructions
(TODO: Add deployment instructions, Ansible templates when ready.)

#### Planning

Our first goal is to decide on the models and determine the relationships between them. We have a three models consisting of at least _one_ many-to-many relationship. Here are our models:

* `Game`, `Stadium`, `Team`:  A team has many games, and a stadium has many games. Games belongs to team & stadium.


* This is how our schema look like:

ActiveRecord::Schema.define(version: 2020_03_03_201545) do

  create_table "games", force: :cascade do |t|
    t.string "team_id"
    t.string "stadium_id"
  end

  create_table "stadia", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
  end

end

User Stories

Our user will interact with our app and will be able to Create a team , Read a list of teams, Update a team and Delete a team.



#### Migrations

We Created our database and migrations in the terminal (keeping in mind that Rake is available in Run `rake -T` in your terminal for a refresher.



#### Seeding the Database


Enter the seeds file. What is a seed file? It's a file (`seeds.rb`), located in the `db` folder, where you create new instances of your classes and save them to your database. There are several ways this could happen. You could iterate over a csv file, for example, pulling out relevant data, and creating a new row in your database for every row in the file.

If you look in your `Gemfile`, you'll notice that it has already been included as a dependency for you and was installed when you ran `bundle install`. 

---

### Phase 3: Execution

#### Welcome to the CLI


The app displays a greeting message and ask the user for it's name.

once the user enters it's name it will welcome the user and ask to select a number from the menu option.

According to the option selected the user will have capability of Create a team, Read a list of teams, update it's favorite team and delete a team.


Errors

In order to create a menu of options we created the conditionals staments if,elsif,elsif,elsif,elsif But apparently Ruby does not like more than three elsif statements so we have to replace them with the statements case, when, when,when,when,in order to work properly.



If you have a question or comment about this project, file a GitHub Issue with your question in the Title, any context in the Comment, and add the question Label. For general questions kindly email to: arenas.mauricio@yahoo.com