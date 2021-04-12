module GameLogic
  def count_turns
    @turns = @player1_turn + @player2_turn
  end
  

  def user_position(position)
    if position.between?(1, 9).to_i && @turns.any? {|turn| turn == position.to_i}
      true
    else
      false
    end
  end

  def winner
    win_sequence.each do |sequence|
    player1_wins if sequence - @player1_turn == []
    @win = true if sequence - @player1_turn == []
  
    player2_wins if sequence - @player2_turn == []
    @win = true if sequence - @player2_turn == []
    end
    @win
  end
  end

  









