require_relative './rock_paper_scissors.rb'

class RockPaperScissors::Player
  attr_accessor :chooser
  def initialize(strategy=RockPaperScissors::Strategy::Random.new)
    if strategy.is_a? RockPaperScissors::Strategy::Base
      @chooser = strategy
    else
      raise ArgumentError, "#{strategy.class} is not a subclass of #{RockPaperScissors::Strategy::Base}"
    end
  end
  def choice
    @chooser.choice
  end
end
