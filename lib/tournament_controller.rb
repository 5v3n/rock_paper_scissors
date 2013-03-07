require 'erb'
require_relative 'tournament'

class RockPaperScissors::TournamentController
  def index
    results       = RockPaperScissors::Tournament.play
    @player_a_wins = results[:wins_player_a]
    @player_b_wins = results[:wins_player_b]
    @total_rounds  = results[:rounds]
    @ties          = results[:ties]
    render :tournament_view
  end
  def retrieve_binding # this is only a helper method to access the objects binding method
    binding
  end
  def render(template)
    template_string = File.new(File.expand_path("../../lib/#{template}.erb", __FILE__)).read
    template = ERB.new template_string
    template.result(retrieve_binding)
  end
end
