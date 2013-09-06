require 'spec_helper'

describe Game do

  subject(:game) { Game.new }


  context "#initialize" do

    it "should have a win data" do
      should respond_to(:win)
    end

    it "should have a played data" do
      should respond_to(:played)
    end

    it "should have a lose data" do
      should respond_to(:lose)
    end

  end



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
  it "total played game should be equal to win and loss" do
    game.played.should == (game.win+game.loss)
  end


  context "#associations" do
    it "should belongs to User" do
      p = Game.reflect_on_association(:user)
      p.macro.should == :belongs_to
    end
    # or
    ###
    #it { should belongs_to(:user) }
    ###
  end

end