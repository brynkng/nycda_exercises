class RenameGameLevel < ActiveRecord::Migration
  def change
    rename_column :heros, :game_level, :game_floor
  end
end
