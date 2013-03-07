require 'spec_helper'

require_relative '../../app/tournament_controller.rb'

describe RockPaperScissors::TournamentController do
  context ".index()" do
    it "assigns the necessary instance variables" do
      instance = RockPaperScissors::TournamentController.new
      instance.index
      [:@ties, :@total_rounds, :@player_b_wins, :@player_a_wins].each do |desired_variable|
        instance.instance_variable_get(desired_variable).should_not be_nil
      end
    end
  end
end