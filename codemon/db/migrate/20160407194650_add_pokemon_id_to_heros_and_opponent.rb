class AddPokemonIdToHerosAndOpponent < ActiveRecord::Migration
  def change
    add_column :heros, :pokemon_id, :integer
    add_column :opponents, :pokemon_id, :integer
    remove_column :opponents, :type
    remove_column :opponents, :name
  end
end
