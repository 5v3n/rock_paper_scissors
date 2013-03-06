require 'spec_helper'

require_relative '../lib/tournament.rb'

describe RockPaperScissors::Tournament do
# Das Spiel sollte beide Spieler 100x gegeneinander spielen lassen. Die Ausgabe des Programms soll folgendes Format haben (mit ggf. anderen Zahlen):
# "Player A wins 31 of 100 games"
# "Player B wins 37 of 100 games"
# "Tie: 32 of 100 games"
  context "#play()" do
    let(:game_result){ RockPaperScissors::Tournament.play }
    it "returns a hash with the results, e.g. {:wins_player_a=>28, :wins_player_b=>35, :ties=>37, :rounds => 100}" do
      game_result.has_key?(:wins_player_a).should be_true
      game_result.has_key?(:wins_player_b).should be_true
      game_result.has_key?(:ties).should be_true
      game_result.has_key?(:rounds).should be_true
    end
    it "runs 100 rounds" do
      game_result[:rounds].should == 100
    end
  end
end
