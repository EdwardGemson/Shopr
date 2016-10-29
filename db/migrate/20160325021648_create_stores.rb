class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.boolean :open 
      t.string :hours 
      t.integer :business_id
      t.integer :inventory_id
      t.timestamps null: false
    end
  end
end
