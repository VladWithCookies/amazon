FactoryGirl.define do 
  factory :author do
    firstname { FFaker::Name.first_name }
    lastname { FFaker::Name.last_name }
    bio { FFaker::Lorem.paragraphs }
  end
end