class CreateMileServices < ActiveRecord::Migration[5.0]
  def change
    create_table :mile_services do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
