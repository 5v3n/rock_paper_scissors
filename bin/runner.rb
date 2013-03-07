#! /usr/bin/env ruby
require_relative '../lib/tournament_controller'

controller = TournamentController.new
controller.index
template_string = File.new(File.expand_path("../../lib/tournament_view.erb", __FILE__)).read
template = ERB.new template_string
puts template.result(controller.get_binding)