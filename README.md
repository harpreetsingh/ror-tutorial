# Rails Quickstart

## Models
* Generate a controller: `$ rails generate controller Users new --no-test-framework`
* Database
** Migration: `bundle exec rake db:migrate`
** Rollback: `bundle exec rake db:rollback`
** Reset: ```bundle exec rake db:reset```
*** followed by a re-prepared: ```bundle exec rake db:test:prepare```
** Modifying existing table: `rails g migration add_index_to_users_email`
* Annotate User class: `gem 'annotate'` in gemfile
** `bundle exec annotate --position before`
* Run rails console: `rails console --sandbox`
* Write tests
** `bundle exec rake db:test:prepare` to set up database for tests
* Use Factory_Girl to create model objects for testing in spec/factories.rb
** ```FactoryGirl.define do
        factory :user do
            name "Harpreet"
            email "harpreet@foo.com"
            password "foobar"
            password_confirmation "foobar"
        end
      end```

## Views
* Create a form ```<%= form_for(@model_instance) do |f| %>
## Testing
* Speeding up brypt (hash takes a while) during testing. Tests do fly after this change.
```require 'bcrypt'
     silence_warnings do
       BCrypt::Engine::DEFAULT_COST = BCrypt::Engine::MIN_COST
     end```

## Debugging
* On views: `<%= debug(params) if Rails.env.development? %>`
** add a Sass mixin
*** ```

## Useful Rails/Ruby information
* [Ruby regular expressions: Rubular](http://rubular.com)
