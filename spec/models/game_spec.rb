require 'rails_helper'

describe Game, type: :model do
  context "relationships" do
    it { should belong_to(:player1) }
    it { should belong_to(:player2) }
    it { should belong_to(:player3) }
    it { should belong_to(:player4) }
  end
end