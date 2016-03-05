class TeamsController < ApplicationController
  def index
  	@teams=Team.all
  end

  def show
    @team=Team.find(params[:id])

  def new
  	@team=Team.new
  end

  def create
  	@team=Team.new(team_params)
  	if @team.save
  		redirect_to teams_path
  	else render team_new_path
  	end
  end

  def edit
    @team=Team.find(params[:id])
  end

  def update
    @team=Team.find(params[:id])
    if @team.update_attributes(team_params)
      redirect_to team_path 
    else render edit_team_path
    end
  end


  def delete
    @team=Team.find(params[:id])
  end

  def destroy
    team=Team.find(params[:id]).destroy
    redirect_to teams_path, notice: "Team was #{team.id} destroy"
  end


  def team_params
  	params.require(:team).permit(:player1, :player2)
  end
end
end
