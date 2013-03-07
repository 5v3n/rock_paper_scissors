require 'spec_helper'

require_relative '../../../lib/strategy/base.rb'

describe RockPaperScissors::Strategy::Base do
  context ".choice()" do
    it "raises an error pointing out it has to be specified" do
      lambda {RockPaperScissors::Strategy::Base.new.choice()}.should raise_error(RuntimeError, /not yet specified/)
    end
  end
end
