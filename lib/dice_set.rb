require_relative "dice"

class DiceSet

  attr_reader :dice_list

  def initialize
    @dice_list = []
  end

  def add_dice(*die)
    die.each { |die| dice_list << die }
  end

  def roll_dice
    result =[]
    dice_list.each { |die| result << die.roll }
    result
  end

end