class AddAttachmentImage1ToPackages < ActiveRecord::Migration
  def self.up
    change_table :packages do |t|
      t.attachment :image_1
    end
  end

  def self.down
    remove_attachment :packages, :image_1
  end
end
