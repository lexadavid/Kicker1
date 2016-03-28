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

  it "should be match" do
    expect(player.first_name).to eq("John")
    expect(player.last_name).to eq("Doe")
    expect(player.email).to eq("david@wunder.org")
  end
end