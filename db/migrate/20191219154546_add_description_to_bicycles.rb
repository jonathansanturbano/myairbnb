class AddDescriptionToBicycles < ActiveRecord::Migration[5.2]
  def change
    add_column :bicycles, :description, :text
  end
end
