require 'rails_helper'

describe Category do 
  subject { FactoryGirl.create(:category) }

  context "validations" do
    it "is invalid without title" do
      is_expected.to validate_presence_of(:title)
    end

    it "is has unique title" do
      is_expected.to validate_uniqueness_of(:title)
    end
  end

  context "associations" do
    it "has many order items" do 
      should have_many(:books)
    end
  end
end