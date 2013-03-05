RSpec.configure do |config|
end

def check_winner(choice_a, choice_b)
  RockPaperScissors::Logic.winner?(choice_a, choice_b).should == choice_a
  RockPaperScissors::Logic.winner?(choice_a, choice_b).should == choice_a
end