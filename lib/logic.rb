require_relative 'rock_paper_scissors'

class RockPaperScissors::Logic
  BEATS = {scissors: :paper, paper: :rock, rock: :scissors}
  def self.winner?(choice_a, choice_b)
    arguments_valid? [choice_a, choice_b]
    if choice_a == choice_b
      nil
    elsif BEATS[choice_a] == choice_b
      choice_a
    else
      choice_b
    end
  end
private
  def self.arguments_valid?(params)
    params.each do |param|
      raise ArgumentError, error_message(param) unless BEATS.include? param
    end
  end
  def self.valid_arguments()
    RockPaperScissors::AVAILABLE_OPTIONS
  end
  def self.error_message(param)
    "parameter '#{param ||= 'nil'}' invalid - valid arguments are #{valid_arguments}"
  end
end