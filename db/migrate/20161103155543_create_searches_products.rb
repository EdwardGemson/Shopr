class CreateSearchesProducts < ActiveRecord::Migration
  def change
    create_table :searches_products do |t|
    	t.integer :search_id, null: false
    	t.integer :product_id, null: false 
    	t.timestamps null: false
    end
  end
end
