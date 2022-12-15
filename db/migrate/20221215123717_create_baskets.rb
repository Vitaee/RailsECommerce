class CreateBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :baskets do |t|
      t.belongs_to :user, null: false, foreign_key: {delete: :cascade}
      t.belongs_to :product, null: false, foreign_key: {delete: :cascade}
      t.timestamps
    end
  end
end
