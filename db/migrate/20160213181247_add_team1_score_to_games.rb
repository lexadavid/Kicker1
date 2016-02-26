class AddTeam1ScoreToGames < ActiveRecord::Migration
  def change
    add_column :games, :team1_score, :integer
  end
end
