class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :inventory_id, null: false
      t.timestamps null: false
    end
  end
end
