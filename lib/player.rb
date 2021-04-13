class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end

  def self.player_name(name)
    name.to_s.length > 3 && name.split('').all?(/[a-zA-Z]/)
  end
  
end
