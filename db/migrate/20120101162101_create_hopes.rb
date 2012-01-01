class CreateHopes < ActiveRecord::Migration
  def change
    create_table :hopes do |t|
      t.string :name
      t.text :say

      t.timestamps
    end
  end
end
