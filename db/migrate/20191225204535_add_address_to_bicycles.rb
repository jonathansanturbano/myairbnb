class AddAddressToBicycles < ActiveRecord::Migration[5.2]
  def change
    add_column :bicycles, :address, :string
  end
end
