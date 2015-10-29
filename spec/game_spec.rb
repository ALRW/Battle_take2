require 'game'

describe Game do
  let(:game){ described_class.new(player1, player2) }
  let(:player1){ double :player1 }
  let(:player2){ double(:player2)}

  it "expect player to receive reduce_health" do
    expect(player1).to receive(:reduce_health)
    game.attack(player1)
  end
end
