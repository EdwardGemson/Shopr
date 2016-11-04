class CreateUsersSearches < ActiveRecord::Migration
  def change
    create_table :users_searches do |t|
    	t.integer :user_id, null: false
    	t.integer :search_id, null: false
    	t.timestamps null: false
    end
  end
end
