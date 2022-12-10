class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price
      t.float :discountPercentage
      t.float :rating
      t.integer :stock
      t.string :brand
      t.string :category
      t.text :thumnail
      t.text :images, array: true, default: []

      t.timestamps
    end
  end
end
