class CreateBorrows < ActiveRecord::Migration
  def change
    create_table :borrows do |t|
      t.string :name
      t.date :returning_date
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
