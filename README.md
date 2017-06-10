# Rails-5.1 React Heroku Boilerplate
## Created June, 2017
### @DrErnie • TheSwanFactory

[Rails 5.1](https://medium.com/@hpux/rails-5-1-loves-javascript-a1d84d5318b) breaks new ground in provided integrated support for JavaScript within a Ruby on Rails application.  However, that support comes with additional complexity and changes from prior ways of managing JavaScript.

To help you get used to that new way of doing things, this boilerplate "batteries included" application demonstrates how to build and deploy a complete modern, hybrid web application using:

* [Ruby on Rails](http://edgeguides.rubyonrails.org/5_1_release_notes.html) 5.1 back-end
* [React](https://facebook.github.io/react/) front-end
* the [Heroku](https://www.heroku.com/home) cloud application hosting platform
* Heroku's new [continuous integration](https://devcenter.heroku.com/articles/heroku-ci) service (via a complete `app.json` file)

It also includes demonstrates using:

* [Postgres](http://exponential.io/blog/2015/02/21/install-postgresql-on-mac-os-x-via-brew/) database
* [Devise](https://github.com/plataformatec/devise) authentication
* [ActiveAdmin](https://activeadmin.info) administrative interface

It is based on the [rails-5.1-react boilerplate](https://github.com/GiancarlosIO/rails5.1-react-boilerplate), which includes:

* [SASS](sass css) for CSS
* [JBuilder](https://github.com/rails/jbuilder) for JSON

## Prerequisites
* Git (usually installed as part of your system's developer tools)
* Cloning this package from GitHub (we recommend using [GitHub Desktop](https://desktop.github.com))
* The latest Ruby e.g., 2.4 (we recommend you install it via [RVM](https://rvm.io))
* A package manager (we use [Homebrew](https://brew.sh) on the Mac)
* A [free Heroku account](https://signup.heroku.com)
* The [Heroku command-line](https://devcenter.heroku.com/articles/heroku-cli)

## System Installation
From inside the app folder:

```
$ brew install node
$ brew install yarn # or `yarn upgrade` if already present
$ yarn install -g node-gyp
$ bundle install # Uncomment Gemfile `tzinfo-data` if on Windows
$ yarn install
```

# Database Creation

You **MUST** first set the initial admin credentials in `config/db/seeds.rb`.
Note that you usually need to manually create the Postgres database and initial user.
You should also specify your own values for `appuser`, `DBPassword`, and `dbname`.

NOTE: If you are already using Postgres on your machine, you can skip the `install` and `initdb`
steps, but will need to manually create the `appuser` role using, e.g., `psql`.

```
$ vi config/db/seeds.rb # set default user with vi or your favorite text editor
$ brew install postgresql
# Follow instructions to auto-launch postgresql
$ initdb /usr/local/var/postgres -E utf8 -U appuser # May vary if not using Homebrew
$ cat > .env # store local envars to match Heroku config
DATABASE_URL="postgres://appuser:DBPassword@localhost/dbname"
^D
$ rake db:create db:migrate db:setup
```

## Secrets
Instead of environment variables, we use the new encrypted secrets from Rails 5.1.
This is important to configure properly, otherwise you will get weird error messages
about assets not pre-compiling on Heroku!
```
$ rails secrets:setup
# Store that generated key in a secure password manager, or you will lose it forever!
$ rake secret | pbcopy # generate long hex string, store in copy-paste buffer
$ EDITOR=vim bin/rails secrets:edit
production:
  <paste string from above>
# :wq to quit
# Test it is configured properly:
$ RAILS_ENV=production bin/rails assets:precompile
$ git commit # store encrypted file in repo
```


## Launch
```
$ rake test
$ yarn test
$ rake webpacker:compile
$ bin/webpack-dev-server &
$ rails server &
# wait until those servers finish launching
$ sleep 10 && open http://localhost:3000
```

## Deploy
```
$ heroku login
# Enter your credentials from https://signup.heroku.com
$ heroku apps:create my-rails-react-app # use your app name
$ heroku buildpacks:add --index 1 heroku/nodejs
$ heroku buildpacks:add heroku/ruby
$ heroku config:set RAILS_MASTER_KEY=`cat config/secrets.yml.key`
$ git push heroku master
$ heroku open
```
## Personalize

To use this for YourOwnRailsAppName:

* Globally replace "MyRailsReactApp" with YourOwnRailsAppName
* Review `package.json` and update with your own `repository` and `keywords`


## Troubleshoot
```
$ rake --tasks
$ rake webpacker:verify_install
$ rake webpacker:check_node
$ rake webpacker:check_yarn
$ rake webpacker:install:react
$ rake webpacker:yarn_install
```
