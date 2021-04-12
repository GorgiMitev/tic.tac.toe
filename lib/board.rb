class Board
  attr_accessor :game_board

  def initialize(player1, player2)
    @game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @player1 = player1
    @player2 = player2
  end

  def self.player_name(name)
    name.length >= 3 && name.split('').all?(/[a-zA-Z]/)
  end
end
