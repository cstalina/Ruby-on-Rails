class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.integer :article_id
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end