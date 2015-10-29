class Game



  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def attack(player)
    player.reduce_health
  end

  def player_1
    @players.first
  end
  def player_2
    @players.last
  end
end
