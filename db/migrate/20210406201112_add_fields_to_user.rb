class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :user_name, :string
    add_column :users, :role, :string
    add_column :users, :admin, :boolean
  end
end
