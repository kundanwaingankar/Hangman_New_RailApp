require 'spec_helper'

describe Game do
  pending "add some examples to (or delete) #{__FILE__}"

  subject(:game) { Game.new }

  context ".playing_first_time"  do                      #user is playing game for first time
    it "should have no_of_times_gamePlayed equal to 0" do
      game.played.should == 0
      game.win.should == 0
      game.lose.should == 0
    end
  end

  context ".already_played_games"  do                     #user already played games
    it "should have no_of_times_gamePlayed equal to 8 & won 5 times" do
      game.played.should == 8
      game.win.should == 5
      game.lose.should == 3
    end
    it "should have no_of_times_gamePlayed equal to 10 & lose 4 times" do
      game.played.should == 10
      game.win.should == 6
      game.lose.should == 4
    end
  end
end