require_relative "dice"

class DiceSet

  attr_reader :dice_list, :history

  def initialize
    @dice_list = []
    @history = []
  end

  def add_dice(*die)
    die.each { |die| dice_list << die }
  end

  def roll_dice
    result =[]
    dice_list.each { |die| result << die.roll }
    history << result
    result
  end

end