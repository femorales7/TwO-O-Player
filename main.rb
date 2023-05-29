require_relative 'player'
require_relative 'game'
require_relative 'question'

#create new players

player1 = player.new
player2 = player.new

#create a new game

game = Game.new(player1, player2)

#Start new game

game.start