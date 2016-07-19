class AddAttachmentProofToTasks < ActiveRecord::Migration
  def self.up
    change_table :tasks do |t|
      t.attachment :proof
    end
  end

  def self.down
    remove_attachment :tasks, :proof
  end
end
