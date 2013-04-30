FactoryGirl.define do
  factory :user do
    name                 "harpreet"
    email                 "harpreet@cloudbees.com"
    password              "foobar"
    password_confirmation "foobar"
  end
end