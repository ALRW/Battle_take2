class Player
  attr_reader :name, :health

  DEFAULT_HP = 100

  def initialize(name)
    @name = name
    @health = DEFAULT_HP
  end

  def reduce_health
    @health -=10
  end

end
