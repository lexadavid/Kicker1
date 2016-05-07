class PlayersController < ApplicationController
  before_action :get_player, only: [:show, :edit, :update, :delete]

  def index
  	@players=Player.search(params[:keyword])
  end

  def show
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
  end

  def update
  	if @player.update_attributes(player_params)
      flash[:notice] = "Player: '#{@player.first_name} #{@player.last_name}' was updated successfully."
  		redirect_to player_path
  	else
  		render edit_player_path
  	end
  end

  def delete
  end

  def destroy
    player=Player.find(params[:id]).destroy
    redirect_to players_path, notice: "Player '#{player.first_name} #{player.last_name}' was deleted."
  end

  def get_player
    @player= Player.find(params[:id])
  end

private
  def player_params
    params.require(:player).permit(:first_name, :last_name, :email, :country, :position)
  end
end
