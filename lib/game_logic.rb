

class GameLogic
  def count_turns(player1_turn, player2_turn)
    turns = player1_turn + player2_turn
    return turns
  end
  
  def user_position(position)
    if position.between?(1, 9)
      true
    else
      false
    end
  end

  def winner(win_sequence)
    win_sequence.each do |win_opt|
      player1_wins if win_opt - @player1_trn == []
      @win = true if win_opt - @player1_trn == []
      player2_wins if win_opt - @player2_trn == []
      @win = true if win_opt - @player2_trn == []
    end
    @win
  end
end

