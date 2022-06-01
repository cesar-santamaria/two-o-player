class Players
  attr_accessor :player_name, :player_lives
  def initialize(name)
    @player_name = name
    @player_lives = 3
  end

  def lose_life
    self.player_lives -= 1
  end

  def lives?
    player_lives > 0
  end

  def no_lives?
    player_lives === 0
  end
end