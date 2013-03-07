require 'spec_helper'

require_relative '../../../lib/strategy/constant.rb'

describe RockPaperScissors::Strategy::Constant do
  context ".choice()" do
    # Spieler A) wählt immer Papier
    it "returns the selected option constantly" do
      instance = RockPaperScissors::Strategy::Constant.new RockPaperScissors::AVAILABLE_OPTIONS.shuffle.first
      10.times{ instance.choice.should == instance.choice }
    end
  end
end
