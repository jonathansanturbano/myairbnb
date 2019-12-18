class CreateBicycles < ActiveRecord::Migration[5.2]
  def change
    create_table :bicycles do |t|
      t.string :model
      t.integer :price_per_day
      t.float :age

      t.timestamps
    end
  end
end
