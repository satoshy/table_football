class CreateJoinTableMatchRound < ActiveRecord::Migration
  def change
    create_join_table :matches, :rounds do |t|
      t.index [:match_id, :round_id]
      t.index [:round_id, :match_id]
    end
  end
end
