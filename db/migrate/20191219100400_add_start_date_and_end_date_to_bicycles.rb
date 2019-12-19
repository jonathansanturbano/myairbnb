class AddStartDateAndEndDateToBicycles < ActiveRecord::Migration[5.2]
  def change
    add_column :bicycles, :start_date, :date
    add_column :bicycles, :end_date, :date
  end
end
