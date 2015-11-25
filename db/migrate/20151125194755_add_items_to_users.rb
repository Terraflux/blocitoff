class AddItemsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :item_id, :integer
  	add_index :users, :item_id
  end
end
