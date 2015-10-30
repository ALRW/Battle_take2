require 'game'

describe Game do
  let(:game){ described_class.new(player1, player2) }
  let(:player1){ double :player1 }
  let(:player2){ double(:player2)}

  it "expect player to receive reduce_health" do
    expect(player1).to receive(:reduce_health)
    game.attack(player1)
  end
  describe '#turn-switcher' do
    it 'changes the player whose turn it is' do
      game.turn_switcher
      expect(game.current_turn).to eq(player2)
    end
  end
  describe '#current_turn' do
    it 'starts as player1\'s turn' do
      expect(game.current_turn).to be(player1)
    end
  end

end
