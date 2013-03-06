require_relative 'base'

class RockPaperScissors::Strategy::Constant < RockPaperScissors::Strategy::Base
  attr_accessor :choice
  def initialize(choice)
    @choice = choice    
  end
end