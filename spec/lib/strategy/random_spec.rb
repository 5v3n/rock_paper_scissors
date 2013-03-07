require 'spec_helper'

require_relative '../../../lib/strategy/random.rb'

describe RockPaperScissors::Strategy::Random do
  context ".choice()" do
    # Spieler B) trifft zufällige Wahl
    it "returns random choices" do
      strategy = RockPaperScissors::Strategy::Random.new
      range = RockPaperScissors::AVAILABLE_OPTIONS.size*10
      generated_choices = range.times.collect { strategy.choice }
      generated_choices.uniq.size.should == 3
    end
  end
end