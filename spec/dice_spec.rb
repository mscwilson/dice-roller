require "dice"

describe Dice do

  it { is_expected.to respond_to :roll }

  it "roll returns random value between 1..6" do
    dice = Dice.new
    results = []
    100.times { results << dice.roll }
    expect(results.minmax).to eq([1,6])
  end

end