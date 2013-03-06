require_relative '../rock_paper_scissors.rb'

module RockPaperScissors::Strategy 
  class Base
    def choice
      raise "not yet specified"
    end
  end
end