class ChangePokemonTypeColumnToStyle < ActiveRecord::Migration
  def change
    rename_column :pokemons, :type, :style
  end
end
