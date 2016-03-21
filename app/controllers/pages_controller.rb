class PagesController < ApplicationController
  def welcome
  end

  def rules
  end

  def best_performers
    @players = Player.all
  end
end
