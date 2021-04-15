module GameLogic
  def cal_turns
    @turns = @player1_trn + @player2_trn
  end

  def user_position(cell)
    if (1..9).none? { |idx| idx == cell.to_i } || @turns.any? { |turn| turn == cell.to_i }
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
end
