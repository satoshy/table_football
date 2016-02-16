class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :stage_type

      t.timestamps null: false
    end
  end
end
