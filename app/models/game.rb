class Game < ActiveRecord::Base

	belongs_to :player1, class_name: 'Player'
	belongs_to :player2, class_name: 'Player'
	belongs_to :player3, class_name: 'Player'
	belongs_to :player4, class_name: 'Player'

end
