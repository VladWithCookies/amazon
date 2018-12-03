require 'rails_helper'

describe Customer do 
  subject { FactoryGirl.create(:customer) }

  context "validations" do
    [:email, :password, :firstname, :lastname].each do |field|
      it "is invalid without #{field}" do
        is_expected.to validate_presence_of(field)
      end
    end

    it "is has unique email" do
      is_expected.to validate_uniqueness_of(:email)
    end
  end

  context "associations" do
    [:orders, :ratings].each do |x|
      it "has many #{x}" do
        should have_many(x)
      end
    end
  end

  context "#create_order" do
    it "creates new order" do 
      expect { subject.create_order({total_price: 500, completed_date: DateTime.now}) }.to change { subject.orders.count }.by(1)
    end
  end

  context "#orders_in_progress" do
    it "returns number of orders which have status 'in progress'" do
      orders = FactoryGirl.create_list(:order, 3, customer: subject)
      orders << FactoryGirl.create_list(:order, 2, customer: subject, state: 'completed')
      expect(subject.orders_in_progress.count).to eq(3)
    end
  end

end