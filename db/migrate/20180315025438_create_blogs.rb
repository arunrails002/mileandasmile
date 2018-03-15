class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :owner
      t.integer :user_id
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
