require "dice_set"

describe DiceSet do

  it { is_expected.to respond_to(:add_die).with(1).argument }

  it "stores dice" do
    subject.add_die(Dice.new)
    expect(subject.dice_list.length).to eq 1
  end

  it { is_expected.to respond_to(:roll_dice) }
  
  it "rolls dice" do
    
    result = subject.roll_dice
    expect(result.length).to eq subject.dice_list.length
  end
  
end