class AddTeamToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :count_first_team, :integer
    add_column :matches, :count_second_team, :integer
    add_column :matches, :first_team_id, :integer
    add_column :matches, :second_team_id, :integer
    add_index :matches, :first_team_id 
    add_index :matches, :second_team_id
  end
end
