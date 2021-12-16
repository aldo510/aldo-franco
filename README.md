README
This README would normally document whatever steps are necessary to get the application up and running.

Things you may want to cover:

Ruby version: 2.7.2 or newer

System dependencies

Bundler ~> 2.2.16
Postgresql 12 or newer
Rails ~> 5.1.6
* Configuration
Database creation
rails db:create

Database initialization

rails db:migrate
rails db:seed

How to run the test suite

rails tests

Deployment instructions

git add .
git commit -m "Message commit"
git push origin master
git push heroku master (needs the remote from heroku)