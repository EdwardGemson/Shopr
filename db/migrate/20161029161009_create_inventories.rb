class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
    	t.integer :store_id, null: false
    	t.string :products, null: false
    	t.timestamps null: false
    end
  end
end
