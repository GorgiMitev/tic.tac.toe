class GameLogic
  def count_turns(player1_turn, player2_turn)
    turns = player1_turn + player2_turn
    return turns
  end
  
  def user_position(position, game_board)
    if position.between?(1, 9) && game_board[position - 1].is_a?(Integer)
      true
    else
      false
    end
  end

  def winner(win_sequence)
    win_sequence.each do |win_opt|
      player1_wins if win_opt - @player1_turn == []
      @win = true if win_opt - @player1_turn == []
      player2_wins if win_opt - @player2_turn == []
      @win = true if win_opt - @player2_turn == []
    end
    @win
  end
end

