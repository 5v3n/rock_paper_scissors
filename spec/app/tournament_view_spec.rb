require 'spec_helper'

require_relative '../../app/tournament_controller.rb'

describe RockPaperScissors::TournamentController do
  context ".index()" do
    it "renders the necessary data" do
      instance = RockPaperScissors::TournamentController.new
      view = instance.index
      view.should include("Player A wins")
      view.should include("Player B wins")
      view.should include("Tie:")
    end
  end
end