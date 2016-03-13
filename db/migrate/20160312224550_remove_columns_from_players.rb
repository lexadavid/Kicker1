class RemoveColumnsFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :team1_player2, :integer
    remove_column :players, :team2_player1, :integer
    remove_column :players, :team2_player2, :integer
  end
end
