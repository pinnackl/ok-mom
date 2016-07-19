class AddAttributesToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :description, :string
  	add_column :tasks, :answer, :string
  end
end
