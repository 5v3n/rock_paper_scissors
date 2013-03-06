require 'spec_helper'
require_relative '../lib/player.rb'

describe RockPaperScissors::Player do
  context "#new()" do
    let(:unknown_parameter){'wooza_booza!!'}
    it "handles an unknown option" do
      lambda {RockPaperScissors::Player.new(unknown_parameter)}.should raise_error(ArgumentError, /#{unknown_parameter.class}/)
    end
    it "copes with no input choosing the random strategy" do
      player = RockPaperScissors::Player.new
      player.chooser.class.to_s.should == 'RockPaperScissors::Strategy::Random'
    end
  end
  context ".choice()" do
    it "works for default constructor instances" do
      RockPaperScissors::Player.new.choice.should be
    end
  end
end