class Board

    def initialize(player1, player2)
      
      @player1 = player1
      @player2 = player2
    end
  
    def self.player_name(name)
      name.to_s.length > 3 && name.split('').all?(/[a-zA-Z]/)
    end
  
end
