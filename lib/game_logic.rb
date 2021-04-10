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








end


