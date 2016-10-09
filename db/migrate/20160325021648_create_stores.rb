class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.boolean :open, null: false
      t.string :hours, null: false
      t.integer :business_id, null: false
      t.timestamps null: false
    end
  end
end
