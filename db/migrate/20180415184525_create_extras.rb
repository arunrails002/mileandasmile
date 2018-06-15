class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.text :mission
      t.text :vision
      t.text :ourteam

      t.timestamps
    end
  end
end
