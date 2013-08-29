require 'spec_helper'

describe Game do
  pending "add some examples to (or delete) #{__FILE__}"

  subject(:game) { Game.new }

  context ".playing_first_time"  do                      #user is playing game for first time
    it "should have no_of_times_gamePlayed equal to 0" do
      expect(game.played).to eq(0)
      expect(game.win).to eq(0)
      expect(game.lose).to eq(0)
    end
  end

  context ".already_played_games"  do                     #user already played games
    it "should have no_of_times_gamePlayed equal to 8 & won 5 times" do
      expect(game.played).to eq(8)
      expect(game.win).to eq(5)
      expect(game.lose).to eq(3)
    end
    it "should have no_of_times_gamePlayed equal to 10 & lose 4 times" do
      expect(game.played).to eq(10)
      expect(game.win).to eq(6)
      expect(game.lose).to eq(4)
    end
  end
end

