

class Game
  attr_reader :player1_trn, :player2_trn, :winning_sequence, :turns, :win, :game_board

  def cal_turns
    @turns = @player1_trn + @player2_trn
  end

  def user_position(cell)
    if (1..9).none? { |idx| idx == cell.to_i } || @turns.any? { |turns| turns == cell.to_i }
      false
    else
      true
    end
  end

  def winner
    @winning_sequence.each do |win|
      player1_wins if win - @player1_trn == []
      @win = true if win - @player1_trn == []
      player2_wins if win - @player2_trn == []
      @win = true if win - @player2_trn == []
    end
    @win
  end

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
