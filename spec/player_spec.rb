require 'player'

describe Player do

  let(:player1){ described_class.new(name) }
  let(:name){"Pikachu"}
  let(:player2){described_class.new(name2)}
  let(:name2){"Batman"}
  it "expect to return a name" do
    expect(player1.name).to eq(name)
  end
  it 'has a default number of hp' do
    expect(player1.health).to eq(Player::DEFAULT_HP)
  end
  context 'when attacked' do
    it 'looses health' do
      expect{player1.reduce_health}.to change{player1.health}.from(100).to(90)
    end
  end
end
