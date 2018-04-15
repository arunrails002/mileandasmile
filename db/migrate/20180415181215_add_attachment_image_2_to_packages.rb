class AddAttachmentImage2ToPackages < ActiveRecord::Migration
  def self.up
    change_table :packages do |t|
      t.attachment :image_2
    end
  end

  def self.down
    remove_attachment :packages, :image_2
  end
end
