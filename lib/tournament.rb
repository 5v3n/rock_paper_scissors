require 'rock_paper_scissors'

require 'player'
require 'logic'
require 'strategy/constant'

class RockPaperScissors::Tournament
  def self.play
#   Spieler A) wählt immer Papier
#   Spieler B) trifft zufällige Wahl
    player_a = RockPaperScissors::Player.new(RockPaperScissors::Strategy::Constant.new(:paper))
    player_b = RockPaperScissors::Player.new
    results = {}
    results[:wins_player_a] = 0
    results[:wins_player_b] = 0
    results[:ties]          = 0
    results[:rounds]        = 100
    results[:rounds].times { evaluate player_a.choice, player_b.choice, results }
    results
  end
private 
  def self.evaluate choice_a, choice_b, results
    winner = RockPaperScissors::Logic.winner? choice_a, choice_b
    if winner == choice_a
      results[:wins_player_a] += 1
    elsif winner == choice_b
      results[:wins_player_b] += 1
    else
      results[:ties] += 1
    end
  end
end