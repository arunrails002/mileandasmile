class ChangeColumnNameTypeToTypeNameFromBoardingForms < ActiveRecord::Migration[5.0]
def change
    rename_column :boarding_forms, :type, :type_value
  end
end
