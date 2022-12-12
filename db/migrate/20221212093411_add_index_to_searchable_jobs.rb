class AddIndexToSearchableJobs < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!

  def change
    add_index :products, :searchable, using: :gin, algorithm: :concurrently
  end
end
