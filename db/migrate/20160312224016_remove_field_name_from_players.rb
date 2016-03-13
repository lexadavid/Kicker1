class RemoveFieldNameFromPlayers < ActiveRecord::Migration
  def change
    remove_column :players, :team1_player1, :integer
  end
end
