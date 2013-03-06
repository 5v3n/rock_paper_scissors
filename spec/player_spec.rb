require 'spec_helper'
require_relative '../lib/player.rb'

describe RockPaperScissors::Player do
  context ".new()" do
    let(:selected_option){RockPaperScissors::AVAILABLE_OPTIONS.shuffle.first}
    let(:unknown_parameter){'wooza_booza!!'}
    # Implementiere zwei einfache Spieler:
    # Spieler A) wählt immer Papier
    # Spieler B) trifft zufällige Wahl
    it "initializes a player that chooses the selected option constantly" do
      player = RockPaperScissors::Player.new selected_option
      10.times{ player.choice.should == selected_option }
    end
    it "initializes a player that chooses a random option" do
      selected_option = :random
      player = RockPaperScissors::Player.new selected_option
      range = RockPaperScissors::AVAILABLE_OPTIONS.size*10
      generated_choices = range.times.collect { player.choice }
      generated_choices.uniq.size.should == 3
    end
    it "copes with an unknown option" do
      lambda {RockPaperScissors::Player.new(unknown_parameter)}.should raise_error(ArgumentError, /#{unknown_parameter}/)
    end
    it "copes with no input choosing the random strategy" do
      player = RockPaperScissors::Player.new
      player.strategy.should == :random
    end
  end
end