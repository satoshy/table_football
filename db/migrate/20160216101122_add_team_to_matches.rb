class AddTeamToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :fuser_team_id, :integer
    add_column :matches, :suser_team_id, :integer
    add_index :matches, :fuser_team_id 
    add_index :matches, :suser_team_id
  end
end
