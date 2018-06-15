class AddAttachmentImageToMainSliders < ActiveRecord::Migration
  def self.up
    change_table :main_sliders do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :main_sliders, :image
  end
end
