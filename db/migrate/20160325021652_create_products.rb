class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.string :store_name, null: false
      t.integer :price
      t.timestamps null: false
    end
  end
end
