class AddAttachmentImage1ToMainSliders < ActiveRecord::Migration
  def self.up
    change_table :main_sliders do |t|
      t.attachment :image_1
    end
  end

  def self.down
    remove_attachment :main_sliders, :image_1
  end
end
