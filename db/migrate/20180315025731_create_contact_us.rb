class CreateContactUs < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_us do |t|
      t.text :Address
      t.integer :phone
      t.integer :mobile
      t.integer :fax
      t.string :email

      t.timestamps
    end
  end
end
