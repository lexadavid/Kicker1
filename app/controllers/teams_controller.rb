class TeamsController < ApplicationController
  def index
  	@teams=Team.all
  end

  def new
  	@team=Team.new
  end

  def create
  	@team=Team.new(team_params)
  	if @team.save
  		redirect_to :action => :index
  	else render team_new_path
  	end
  end

  def team_params
  	params.require(:team).permit(:player1, :player2)
  end
end
