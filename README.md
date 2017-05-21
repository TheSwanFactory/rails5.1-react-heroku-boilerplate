# Rails-5.1 React Heroku boilerplate
A boilerplate built with rails 5.1, react for Heroku.
It also includes Postgres, Devise, and ActiveAdmin.

Requires homebrew (or equivalent)
# brew install node
* brew install yarn
* yarn install -g node-gyp
* bundle install


* brew install postgresql
* # Follow instructions to auto-launch postgresql
* export DATABASE_URL="postgres://username:MY_PASSWORD@localhost/boilerplate_db"
* rake db:create db:migrate db:setup
*
* rake test
* bin/webpack-dev-server &
* rails server &
* open [http://localhost:3000](http://localhost:3000)
*
* heroku buildpacks:add --index 1 heroku/nodejs
* heroku buildpacks:add heroku/ruby

# Troubleshoot
*
* rake webpacker:verify_install
* rake webpacker:check_node
* rake webpacker:check_yarn
* rake webpacker:install:react
* rake webpacker:yarn_install
* rake webpacker:compile
* rake assets:precompile
