class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string   :name
      t.text     :description
      t.integer  :status

      t.timestamps null: false
    end
  end
end
