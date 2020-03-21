Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

Install Requirements:
rails new \
  --database postgresql \
  --webpack \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/devise.rb \
rails webpacker:install
yarn add bootstrap
yarn add popper.js jquery
rails generate simple_form:install --bootstrap
rails generate devise:install
rails generate devise User
rails g devise:views
rails db:migrate
rails db:create
