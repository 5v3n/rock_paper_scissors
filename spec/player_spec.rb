require 'spec_helper'
require_relative '../lib/player.rb'

describe RockPaperScissors::Player do
  context ".new()" do
    # Implementiere zwei einfache Spieler:
    # Spieler A) wählt immer Papier
    # Spieler B) trifft zufällige Wahl
    let(:selected_option){:rock}
    it "initializes a player that chooses the selected option constantly"
    it "initializes a player that chooses a random option"
    it "copes with an unknown option"
    it "copes with no input choosing the random strategy"
  end
end