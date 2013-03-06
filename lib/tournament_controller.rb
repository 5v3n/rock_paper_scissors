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

controller = TournamentController.new
controller.index
template_string = File.new(File.expand_path("../tournament_view.erb", __FILE__)).read
template = ERB.new template_string
puts template.result(controller.get_binding)