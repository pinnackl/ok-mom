class RemoveColumnsFromUser < ActiveRecord::Migration
  def change
  	    remove_column :users, :password
    	remove_column :users, :createdAt
  end
end
