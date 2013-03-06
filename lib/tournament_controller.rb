require 'erb'
require_relative 'tournament'

results       = RockPaperScissors::Tournament.play
player_a_wins = results[:wins_player_a]
player_b_wins = results[:wins_player_b]
total_rounds  = results[:rounds]
ties          = results[:ties]

template = ERB.new <<-EOF
  Player A wins <%= player_a_wins %> of <%= total_rounds %> games
  Player B wins <%= player_b_wins %> of <%= total_rounds %> games
  Tie: <%= ties %> of <%= total_rounds %> games"
EOF

puts template.result(binding)