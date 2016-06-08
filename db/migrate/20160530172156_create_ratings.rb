class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :text
      t.integer :rating
      t.belongs_to :book, index: true
      t.belongs_to :customer, index: true
      t.timestamps null: false
    end
  end
end
