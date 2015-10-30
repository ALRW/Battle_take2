class Game

attr_reader :current_turn
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
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
  def turn_switcher
    @current_turn = opponent(current_turn)
  end

  private

  def opponent(current_player)
    @players.select{|player| player != current_player}.first
  end
end
