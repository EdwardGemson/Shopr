class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :address, null: false
      t.string :username, null: false
      t.string :password_hash, null: false
      t.timestamps null: false
    end
  end
end
