# Rails Quickstart

## Models
    * Generate a controller: `$ rails generate controller Users new --no-test-framework`
    * Database
        ** Migration: `bundle exec rake db:migrate`
        ** Rollback: `bundle exec rake db:rollback`
        ** Modifying existing table: `rails g migration add_index_to_users_email`
    * Annotate User class: `gem 'annotate'` in gemfile
        ** `bundle exec annotate --position before`
    * Run rails console: `rails console --sandbox`
    * Write tests
    * `bundle exec rake db:test:prepare` to set up datbase for tests


## Useful Rails/Ruby information
    * [Ruby regular expressions: Rubular](http://rubular.com)