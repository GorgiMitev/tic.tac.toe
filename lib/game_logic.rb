module GameLogic
  def count_turns
    @turns = @player1_turn + @player2_turn
  end
  

  def user_position(position)
    if (1..9).none? {|input| input == position.to_i}
      false
    elsif 
      @turns.any? {|turn| turn == position.to_i}
      false
    else
      true
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

  









