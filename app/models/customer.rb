class Customer < ActiveRecord::Base
  has_many :orders
  has_many :ratings
  validates :password, :firstname, :lastname, presence: true
  validates :email, presence: true, uniqueness: true

  def create_order(**args)
    orders.create(args)
  end

  def orders_in_progress
    orders.where(state: 'in progress')
  end
end
