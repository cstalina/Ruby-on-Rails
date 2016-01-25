class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_id
      t.references :buyer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
