class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.string :Name
      t.integer :Days
      t.integer :Nights
      t.decimal :Amount

      t.timestamps
    end
  end
end
