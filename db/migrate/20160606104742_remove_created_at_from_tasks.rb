class RemoveCreatedAtFromTasks < ActiveRecord::Migration
  def change
    remove_column :tasks, :createdAt, :datetime
  end
end
