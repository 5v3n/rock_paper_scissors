require 'erb'
require_relative 'tournament'

class TournamentController
  def index
    results       = RockPaperScissors::Tournament.play
    @player_a_wins = results[:wins_player_a]
    @player_b_wins = results[:wins_player_b]
    @total_rounds  = results[:rounds]
    @ties          = results[:ties]
  end
  def get_binding # this is only a helper method to access the objects binding method
    binding
  end
end
