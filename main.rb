require './classes/players.rb'
require './classes/quiz.rb'
require './classes/turn.rb'

myturn = Turn.new
myturn.run_turn

myplayers = Players.new
puts myplayers.player1