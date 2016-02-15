class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :name
      t.integer :round_type
      t.references :tournament, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
