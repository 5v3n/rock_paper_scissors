require_relative './rock_paper_scissors.rb'

class RockPaperScissors::Player
  AVAILABLE_OPTIONS = RockPaperScissors::AVAILABLE_OPTIONS + [:random]
  attr_reader :strategy
  def initialize(strategy=:random)
    if AVAILABLE_OPTIONS.include?strategy
      @strategy = strategy 
    else
      raise ArgumentError, "#{strategy} not valid. Valid options are #{AVAILABLE_OPTIONS}."
    end
  end
  def choice
    if @strategy == :random
      RockPaperScissors::AVAILABLE_OPTIONS.shuffle.first
    else
      @strategy
    end
  end
end
