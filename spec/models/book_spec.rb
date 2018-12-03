require 'rails_helper'

describe Book do 
  subject { FactoryGirl.create(:book) }

  context "validations" do
    [:title, :price, :books_in_stock].each do |field|
      it "is invalid without #{field}" do
        is_expected.to validate_presence_of(field)
      end
    end
  end

  context "associations" do
    it "has many order ratings" do 
      should have_many(:ratings)
    end

    [:author, :category].each do |x|
      it "belongs to #{x}" do
        should belong_to(x)
      end
    end
  end
end