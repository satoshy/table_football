class AddDeviseColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, default: ''
    add_column :users, :last_name, :string, default: ''
    add_column :users, :avatar, :string, default: ''
  end
end
