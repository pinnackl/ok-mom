class AddTaskToUser < ActiveRecord::Migration
  def change
    add_reference :tasks, :mother, references: :users, index: true, foreign_key: true
    add_reference :tasks, :child, references: :users, index: true, foreign_key: true
  end
end
