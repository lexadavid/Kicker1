class GamesController < ApplicationController
  def index
  	@games=Game.all
  end

  def new
  	@game=Game.new
  end

  def create
    @game=Game.new(game_params)
    if @game.save
    redirect_to :action => :index
    else
    @title = "Game added"
    render 'game/new'
    end
  end

  def destroy
    @game = Game.find(game_params[:game])
    @game.destroy
    redirect_to :action => :index, :notice => "Your game was deleted"
  end

  def game_params
    params.require(:game).permit(:team1, :team2, :team1_id, :team2_id, :team1_score, :team2_score)
  end 

end
