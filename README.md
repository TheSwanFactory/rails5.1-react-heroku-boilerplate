# Rails-5.1 React boilerplate
A boilerplate built with rails 5.1, react and redux

* npm install -g yarn
* bundle install
*
* rake webpacker:verify_install
* rake webpacker:check_node
* rake webpacker:check_yarn
* rake webpacker:install:react
* rake webpacker:yarn_install
* rake webpacker:compile
* rake assets:precompile

* brew install postgresql
* # Follow instructions to auto-launch postgresql
* export DATABASE_URL="postgres://higher:MY_PASSWORD@localhost/higher_development"
* rake db:create
* rake db:migrate
*
* rake test
* bin/webpack-dev-server &
* rails server &
* open http://localhost:3000
*
* heroku buildpacks:add --index 1 heroku/nodejs
* heroku buildpacks:add heroku/ruby
