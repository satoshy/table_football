class CreateJoinTableRoundTeam < ActiveRecord::Migration
  def change
    create_join_table :rounds, :teams do |t|
      t.index [:round_id, :team_id]
      t.index [:team_id, :round_id]
    end
  end
end