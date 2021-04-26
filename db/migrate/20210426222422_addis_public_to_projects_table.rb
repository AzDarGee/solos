class AddisPublicToProjectsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :isPublic, :boolean

    add_index :projects, :isPublic
  end
end
