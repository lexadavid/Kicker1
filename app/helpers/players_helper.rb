module PlayersHelper
	def players_select
	    Player.order(:first_name).map {|p| [p.first_name, p.id]}
    end
end
