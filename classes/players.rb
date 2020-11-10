=begin
- STATE: Keep track of a player’s score (initialized at 3):
- METHOD: Announce winner & end game:
    - If one player’s score reaches 0, print that the other player is the winner, print that the game is over, and end the game
=end

class Players
  def initialize()
    @player1 = {"name":"Player 1", "score":3}
    @player2 = {"name":"Player 2", "score":3}
  end

  attr_accessor :player1, :player2

end