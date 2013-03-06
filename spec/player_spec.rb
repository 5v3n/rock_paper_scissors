require 'spec_helper'
require_relative '../lib/player.rb'
require_relative '../lib/strategy/random.rb'
require_relative '../lib/strategy/constant.rb'

describe RockPaperScissors::Player do
  context ".new()" do
    let(:selected_strategy){RockPaperScissors::Strategy::Constant.new(RockPaperScissors::AVAILABLE_OPTIONS.shuffle.first)}
    let(:unknown_parameter){'wooza_booza!!'}
    # Implementiere zwei einfache Spieler:
    # Spieler A) wählt immer Papier
    # Spieler B) trifft zufällige Wahl
    it "initializes a player that chooses the selected option constantly" do
      player = RockPaperScissors::Player.new selected_strategy
      10.times{ player.choice.should == selected_strategy.choice }
    end
    it "initializes a player that chooses a random option" do
      selected_strategy = RockPaperScissors::Strategy::Random.new
      player = RockPaperScissors::Player.new selected_strategy
      range = RockPaperScissors::AVAILABLE_OPTIONS.size*10
      generated_choices = range.times.collect { player.choice }
      generated_choices.uniq.size.should == 3
    end
    it "copes with an unknown option" do
      lambda {RockPaperScissors::Player.new(unknown_parameter)}.should raise_error(ArgumentError, /#{unknown_parameter.class}/)
    end
    it "copes with no input choosing the random strategy" do
      player = RockPaperScissors::Player.new
      player.chooser.should be_a RockPaperScissors::Strategy::Random
    end
  end
end