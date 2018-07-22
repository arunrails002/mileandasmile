class AddColumnToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :Day1,  :string
    add_column :packages, :Day2, :string
    add_column :packages, :Day3, :string
    add_column :packages, :Day4, :string
    add_column :packages, :Day5, :string
    add_column :packages, :Day6, :string
  end
end
