require_relative('../lib/game_logic')

class Game
  include GameLogic
  attr_reader :player1_trn, :player2_trn, :winning_sequence, :turns, :win, :game_board
  
  def initialize
    @player1_trn = []
    @player2_trn = []
    @winning_sequence = [[1, 2, 3],
                         [4, 5, 6],
                         [7, 8, 9],
                         [1, 4, 7],
                         [2, 5, 8],
                         [3, 6, 9],
                         [1, 5, 9],
                         [3, 5, 7]]
    @turns = []
    @win = false
    @game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end
end
