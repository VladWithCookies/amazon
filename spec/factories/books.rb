FactoryGirl.define do 
  factory :book do
    title { FFaker::Product.product_name }
    description { FFaker::Lorem.paragraph }
    price 15
    books_in_stock 42
    author
    category
  end
end