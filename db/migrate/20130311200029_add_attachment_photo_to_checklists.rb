class AddAttachmentPhotoToChecklists < ActiveRecord::Migration
  def self.up
    change_table :checklists do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :checklists, :photo
  end
end
