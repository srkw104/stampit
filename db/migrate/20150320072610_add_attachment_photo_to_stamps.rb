class AddAttachmentPhotoToStamps < ActiveRecord::Migration
  def self.up
    change_table :stamps do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :stamps, :photo
  end
end
