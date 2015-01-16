 FactoryGirl.define do
   factory :user do
    sequence(:username){|n| "Peter#{n}"}#required
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    sequence(:username){|n| "Peter#{n}"}#required

  end
