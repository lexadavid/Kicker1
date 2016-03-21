require 'rails_helper'

describe Player, type: :model do
  let(:player) { create :player }

  context "games" do
    it "return games" do
      game1 = create :game, player1: player
      game2 = create :game, player3: player

      expect(player.games).to match_array [game1, game2]
    end
  end
end