class Game < ActiveRecord::Base
	attr_accessible :team1_player1, :team1_player2, :team2_player1, :team2_player2, :team1_score, :team2_score
	has_and_belongs_to_many :players
end
