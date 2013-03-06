require 'erb'
require_relative 'tournament'

results       = RockPaperScissors::Tournament.play
player_a_wins = results[:wins_player_a]
player_b_wins = results[:wins_player_b]
total_rounds  = results[:rounds]
ties          = results[:ties]

template = ERB.new File.new(File.expand_path("../tournament_view.erb", __FILE__)).read

puts template.result(binding)