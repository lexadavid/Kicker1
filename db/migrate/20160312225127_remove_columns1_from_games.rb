class RemoveColumns1FromGames < ActiveRecord::Migration
  def change
    remove_column :games, :team1, :string
    remove_column :games, :team2, :string
    remove_column :games, :team1_id, :integer
    remove_column :games, :team2_id, :integer
  end
end
