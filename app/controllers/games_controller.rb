class GamesController < ApplicationController
  before_action :get_game, only: [:show, :edit, :update, :delete]

  def index
  	@games = Game.all
  end

  def show
    respond_to do |format|
      format.html
      format.json {render json: @game}
    end
  end

  def new
  	@game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      flash[:notice] = "Game was successfully created."
      redirect_to games_path
    else
      render 'games/new'
    end
  end

  def edit
  end

  def update
    if @game.update_attributes(game_params)
      flash[:notice] = "Game #{@game.id} was successfully updated."
      redirect_to game_path
    else
      render 'edit'
    end
  end

  def delete
  end

  def destroy
    game = Game.find(params[:id]).destroy
    flash[:notice] = "Game #{game.id} was successfully deleted."
    redirect_to games_path
  end

  def game_params
    params.require(:game).permit(:player1_id, :player2_id, :player3_id, :player4_id, :team1_score, :team2_score)
  end

   def get_game
    @game = Game.find(params[:id])
  end

end
