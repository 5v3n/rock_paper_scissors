class RockScissorsPaper
  BEATS = {scissors: :paper, paper: :rock, rock: :scissors}
  def self.winner?(choice_a, choice_b)
    #TODO check if arguements are valid
    if choice_a == choice_b
      nil
    elsif BEATS[choice_a] == choice_b
      choice_a
    else
      choice_b
    end
  end
end