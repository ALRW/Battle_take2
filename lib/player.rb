class Player
  attr_reader :name, :health

  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @health = DEFAULT_HP
  end

  def attack(player)
    player.reduce_health
  end
  def reduce_health
    @health -=10
  end

end
