class GamesController < ApplicationController
  def index
  	@games=Game.all
  end

  def show
    @game=Game.find(params[:id])
  end

  def new
  	@game=Game.new
  end

  def create
    @game=Game.new(game_params)
    if @game.save
      flash[:notice] = "Game created successfully."
    redirect_to games_path
    else
    @title = "Game added"
    render 'game/new'
    end
  end

  def edit
     @game=Game.find(params[:id])
  end

  def update
    @game=Game.find(params[:id])
    if @game.update_attributes(game_params)
      flash[:notice] = "Game #{@game.id} updated successfully."
      redirect_to game_path
    else
      render 'edit'
    end
  end

  def delete
    @game=Game.find(params[:id])
  end

  def destroy
    game=Game.find(params[:id]).destroy
    flash[:notice] = "Game #{game.id} deleted successfully."
    redirect_to games_path

  end

  def game_params
    params.require(:game).permit(:team1, :team2, :team1_id, :team2_id, :team1_score, :team2_score)
  end 

end
