class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :text
    add_column :users, :adress, :string
    add_column :users, :phone, :string
    add_column :users, :country, :string
  end
end
