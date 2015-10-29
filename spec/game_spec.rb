require 'game'

describe Game do
  let(:game){ described_class.new }
  let(:player1){ double :player1 }

  it "expect player to receive reduce_health" do
    expect(player1).to receive(:reduce_health)
    game.attack(player1)
  end
end
