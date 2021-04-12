module GameLogic
  def count_turns
    @turns = @player1_turn + @player2_turn
  end
  
  def user_position(position)
    if position.between?(1..9).to_a && @turns.any? {|turn| turn == position.to_i}
      true
    else
      false
    end
  end

  def winner
    @win_sequence.each do |win_opt|
      player1_wins if win_opt - @player1_trn == []
      @win = true if win_opt - @player1_trn == []
      player2_wins if win_opt - @player2_trn == []
      @win = true if win_opt - @player2_trn == []
    end
    @win
  end
end
