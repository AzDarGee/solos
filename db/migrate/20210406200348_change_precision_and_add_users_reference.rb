class ChangePrecisionAndAddUsersReference < ActiveRecord::Migration[6.1]
  def change
    add_reference :locations, :user, null: false, foreign_key: true
    change_column :locations, :latitude, :decimal, precision: 10, scale: 6
    change_column :locations, :longitude, :decimal, precision: 10, scale: 6
  end
end
