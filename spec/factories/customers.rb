FactoryGirl.define do
  factory :customer do
    firstname { FFaker::Name.first_name }
    lastname  { FFaker::Name.last_name }
    password  { FFaker::Internet.password }

    sequence(:email){ |n| "email#{n}@example.com" }
  end
end