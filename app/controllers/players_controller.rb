class PlayersController < ApplicationController
  def index
  	@players=Player.all
  end

  def show
  	@player=Player.find(params[:id])
  end

  def new
  	@player=Player.new
  end

  def create
  	@player=Player.new(player_params)
  	if @player.save
  		flash[:notice] = "Player '#{@player.first_name} #{@player.last_name}' was created successfully."
  		redirect_to players_path
  	else
  		render 'players/new'
  	end
  end

  def edit
  	@player=Player.find(params[:id])
  end

  def update
  	@player=Player.find(params[:id])
  	if @player.update_attributes(player_params)
      flash[:notice] = "Player: '#{@player.first_name} #{@player.last_name}' was updated successfully."
  		redirect_to player_path
  	else
  		render edit_player_path
  	end
  end

  def delete
    @player=Player.find(params[:id])
  end

  def destroy
    player=Player.find(params[:id]).destroy
    redirect_to players_path, notice: "Player '#{player.first_name} #{player.last_name}' was deleted."
  end

private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :country, :position)
  end
end
