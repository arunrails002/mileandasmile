class CreateMainSliders < ActiveRecord::Migration[5.0]
  def change
    create_table :main_sliders do |t|
      t.string :name

      t.timestamps
    end
  end
end
