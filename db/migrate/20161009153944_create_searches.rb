class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
    	t.string :name, null: false
    	t.string :user_id, null: false
    	t.timestamps null: false
    end
  end
end
