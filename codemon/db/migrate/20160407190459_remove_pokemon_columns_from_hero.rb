class RemovePokemonColumnsFromHero < ActiveRecord::Migration
  def change
    remove_column :heros, :name
    remove_column :heros, :description
    remove_column :heros, :type
  end
end
