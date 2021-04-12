module GameLogic
  def count_turns
    @turns = @player1_turn + @player2_turn
  end
  
  def user_position(position)
<<<<<<< HEAD
    if position.between?(1..9).to_a && @turns.any? {|turn| turn == position.to_i}
      true
    else
=======
    if (1..9).none? {|input| input == position.to_i}
>>>>>>> 02895b2d660169bbfd40aadac3765b10ee15a5eb
      false
    elsif 
      @turns.any? {|turn| turn == position.to_i}
      false
    else
      true
    end
  end

  def winner
<<<<<<< HEAD
    @win_sequence.each do |win_opt|
      player1_wins if win_opt - @player1_trn == []
      @win = true if win_opt - @player1_trn == []
      player2_wins if win_opt - @player2_trn == []
      @win = true if win_opt - @player2_trn == []
    end
    @win
  end
end
=======
  @win_sequence.each do |sequence|
    player1_wins if sequence - @player1_turn == []
    @win = true if sequence - @player1_turn == []
  
    player2_wins if sequence - @player2_turn == []
    @win = true if sequence - @player2_turn == []
    end
    @win
  end
  
end

  









>>>>>>> 02895b2d660169bbfd40aadac3765b10ee15a5eb
