RSpec.configure do |config|
end

def check_winner(choice_a, choice_b)
  RockScissorsPaper.winner?(choice_a, choice_b).should == choice_a
  RockScissorsPaper.winner?(choice_a, choice_b).should == choice_a
end