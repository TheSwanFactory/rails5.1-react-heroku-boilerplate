# Rails-5.1 React Heroku Boilerplate

[Rails 5.1](https://medium.com/@hpux/rails-5-1-loves-javascript-a1d84d5318b) breaks new ground in provided integrated support for JavaScript within a Ruby on Rails application.  However, that support comes with additional complexity and changes from prior ways of managing JavaScript.


To help you get used to the new way of doing things, this boilerplate "batteries included" application demonstrates how to build and deploy a complete modern, hybrid web application using a:
* [Ruby on Rails](http://edgeguides.rubyonrails.org/5_1_release_notes.html) 5.1 back-end
* [React](https://facebook.github.io/react/) front-end
* on the [Heroku](https://www.heroku.com/home) cloud application hosting platform.

It also demonstrates how to use a [Postgres](http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/) database, [Devise](https://github.com/plataformatec/devise) authentication, and the [ActiveAdmin](https://activeadmin.info) administrative interface. It is based on the [rails-5.1-react boilerplate](https://github.com/GiancarlosIO/rails5.1-react-boilerplate), which includes [SASS](sass css) for CSS and [JBuilder](https://github.com/rails/jbuilder) for JSON.

# Prerequisites

* The latest Ruby e.g., 2.4 (we recommend you install it via [RVM](https://rvm.io))
* A package manager (we use [Homebrew](https://brew.sh) on the Mac)
* A [free Heroku account](https://signup.heroku.com)
* The [Heroku command-line](https://devcenter.heroku.com/articles/heroku-cli)

# System Installation

```
$ brew install node
$ brew install yarn
$ yarn install -g node-gyp
$ bundle install
```
# Database Creation

```
$ brew install postgresql
# Follow instructions to auto-launch postgresql
$ export DATABASE_URL="postgres://appuser:MY_PASSWORD@localhost/boilerplate_db"
$ initdb /usr/local/var/postgres -E utf8 -U appuser # May vary if not Homebrew
$ rake db:create db:migrate db:setup
```
Note that you may need to manually create the Postgres database or initial user.

# Launch

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
