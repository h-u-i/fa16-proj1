class ChangeTrainerIdFormatInTable < ActiveRecord::Migration
  def up
      change_column :pokemons, :trainer_id, :integer
  end
  def down
      change_column :pokemons, :trainer_id, :string
  end
end
