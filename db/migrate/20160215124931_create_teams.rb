class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :first_player
      t.integer :second_player

      t.timestamps null: false
    end
  end
end
