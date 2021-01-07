require "dice_tower"

describe DiceTower do

  it { is_expected.to respond_to(:roll_dice).with(1).argument }
  
  it "rolls dice" do
    die = Dice.new
    result = subject.roll_dice(3)
    expect(result.length).to eq 3
  end
  
end