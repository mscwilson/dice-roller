require_relative "dice"

class DiceSet

  attr_reader :dice_list, :history, :score

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
    if dice_list.length < 1
      @score = result
    else
      @score = result.sum
    end
    score
  end

end