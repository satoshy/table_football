class AddGradeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade, :decimal
  end
end
