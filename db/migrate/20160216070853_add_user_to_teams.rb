class AddUserToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :count, :integer
    add_column :teams, :first_user_id, :integer
    add_column :teams, :second_user_id, :integer
    add_index :teams, :second_user_id
    add_index :teams, :first_user_id
  end
end
