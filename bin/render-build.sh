#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails webpacker:install
yarn add @popperjs/core
bundle exec rake assets:precompile
bundle exec rake assets:clean
rails db:migrate
# rails db:seed
# bundle exec rake db:migrate
# bundle exec rake db:seed