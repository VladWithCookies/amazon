FactoryGirl.define do
  factory :credit_card do
    firstname { FFaker::Name.first_name }
    lastname  { FFaker::Name.last_name }
    expiration_month FFaker::Time.month
    expiration_year 2016
    cvv  { FFaker::String.from_regexp("^[0-9]{3, 4}$") }
    number 42
    customer
  end
end