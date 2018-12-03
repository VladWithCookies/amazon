class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :total_price
      t.date :completed_date
      t.string :state, default: 'in progress'
      t.belongs_to :customer, index: true
      t.belongs_to :credit_card, index: true
      t.belongs_to :billing_address, index: true
      t.belongs_to :shipping_address, index: true
      t.timestamps null: false
    end
  end
end
