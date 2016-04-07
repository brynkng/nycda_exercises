class CreateOpponents < ActiveRecord::Migration
  def change
    create_table :opponents do |t|
      t.integer :hp
      t.integer :level
      t.string :type
      t.string :name

      t.timestamps null: false
    end
  end
end
