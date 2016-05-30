class PagesController < ApplicationController
  def welcome
  end

  def rules
  end

  def graph
  end

  def best_performers
    @players = Player.all
  end
end
