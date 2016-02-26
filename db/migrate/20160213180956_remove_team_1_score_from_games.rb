class RemoveTeam1ScoreFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :team_1_score, :integer
  end
end
