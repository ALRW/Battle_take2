require 'player'

describe Player do

  let(:player){ described_class.new(name) }
  let(:name){"Batman"}

  it "expect to return a name" do
    expect(player.name).to eq(name)
  end
end
