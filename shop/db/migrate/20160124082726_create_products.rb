class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.integer :category_id
      t.integer :buyer_id
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
