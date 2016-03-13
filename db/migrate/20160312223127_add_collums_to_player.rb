class AddCollumsToGame < ActiveRecord::Migration
  def change
    add_column :players, :team1_player1, :integer
    add_column :players, :team1_player2, :integer
    add_column :players, :team2_player1, :integer
    add_column :players, :team2_player2, :integer
  end

  def down
    remove_column :team1, :team2, :team1_id, :team2_id
  end
end