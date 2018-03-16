class CreateBoardingForms < ActiveRecord::Migration[5.0]
  def change
    create_table :boarding_forms do |t|
      t.string :type
      t.string :spot
      t.string :services
      t.date :traveldate
      t.integer :numberofnights
      t.integer :mobile
      t.string :email

      t.timestamps
    end
  end
end
