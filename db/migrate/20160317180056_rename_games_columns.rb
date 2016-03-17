class RenameGamesColumns < ActiveRecord::Migration
  def change
  	rename_column :games, :team1_player1, :player1_id
  	rename_column :games, :team1_player2, :player2_id
  	rename_column :games, :team2_player1, :player3_id
  	rename_column :games, :team2_player2, :player4_id
  end
end
