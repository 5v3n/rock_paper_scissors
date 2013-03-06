require_relative 'base'

class RockPaperScissors::Strategy::Random < RockPaperScissors::Strategy::Base
  def choice
    RockPaperScissors::AVAILABLE_OPTIONS.shuffle.first
  end
end