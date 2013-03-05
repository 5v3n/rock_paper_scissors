require 'spec_helper'
require_relative '../lib/rock_scissors_paper.rb'

describe RockScissorsPaper do
  let(:scissors){:scissors}
  let(:rock){:rock}
  let(:paper){:paper}
  context ".winner?()" do
    # - Schere zerschneidet Papier (Scissors beats paper)
    # - Stein zerschlägt Schere (Rock beats scissors)
    # - Papier umwickelt Stein (Paper beats rock)
    # - Wählen beide Spieler das Gleiche, ist es ein Unentschieden (Tie).
    it "lets scissors beat paper" do
      check_winner scissors, paper
    end
    it "lets stone beat scissors" do
      check_winner rock, scissors
    end
    it "lets paper beat stone" do
      check_winner paper, rock
    end
    it "results in a tie for equal choices" do
      RockScissorsPaper.winner?(paper, paper).should == nil
      RockScissorsPaper.winner?(scissors, scissors).should == nil
      RockScissorsPaper.winner?(rock, rock).should == nil
    end
    context "copes with illegal arguments namely" do
      let(:unknown_input_a){'dsfg'}
      let(:unknown_input_b){'4red'}
      let(:known_argument){RockScissorsPaper::BEATS.to_a.shuffle.pop.first}
      it "handles nil,nil" do
        lambda {RockScissorsPaper.winner?(nil, nil)}.should raise_error(ArgumentError)
      end
      it "handles nil with known argument" do
        lambda {RockScissorsPaper.winner?(nil, known_argument)}.should raise_error(ArgumentError)
      end
      it "handles unknown input / input that is not mapped" do
        lambda {RockScissorsPaper.winner?(unknown_input_a, unknown_input_b)}.should raise_error(ArgumentError)
      end
    end
  end
 end