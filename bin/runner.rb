#! /usr/bin/env ruby
require_relative '../app/tournament_controller'

controller = RockPaperScissors::TournamentController.new
puts controller.index