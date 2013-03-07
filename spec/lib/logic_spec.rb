require 'spec_helper'
require_relative '../../lib/logic.rb'

describe RockPaperScissors::Logic do
  let(:scissors){:scissors} #too academic? let's discuss when pairing.
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
      RockPaperScissors::Logic.winner?(paper, paper).should == nil
      RockPaperScissors::Logic.winner?(scissors, scissors).should == nil
      RockPaperScissors::Logic.winner?(rock, rock).should == nil
    end
    context "copes with illegal arguments namely" do
      let(:unknown_input_a){'dsfg'}
      let(:unknown_input_b){'4red'}
      let(:known_argument){RockPaperScissors::Logic::BEATS.to_a.shuffle.pop.first}
      it "handles nil,nil" do
        lambda {RockPaperScissors::Logic.winner?(nil, nil)}.should raise_error(ArgumentError, /nil/)
      end
      it "handles nil with known argument" do
        lambda {RockPaperScissors::Logic.winner?(known_argument, nil)}.should raise_error(ArgumentError, /nil/)
      end
      it "handles unknown input / input that is not mapped" do
        lambda {RockPaperScissors::Logic.winner?(unknown_input_a, unknown_input_b)}.should raise_error(ArgumentError, /#{unknown_input_a}/)
      end
    end
  end
 end