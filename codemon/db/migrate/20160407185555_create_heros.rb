class CreateHeros < ActiveRecord::Migration
  def change
    create_table :heros do |t|
      t.integer :hp
      t.integer :level
      t.integer :xp
      t.string :name
      t.string :description
      t.string :type
      t.string :username
      t.string :password
      t.integer :game_level

      t.timestamps null: false
    end
  end
end
