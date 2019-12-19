class AddUserReferenceToBicycles < ActiveRecord::Migration[5.2]
  def change
    add_reference :bicycles, :user, foreign_key: true
  end
end
