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
    @result = []
    @score = []
    dice_list.each { |die| @result << die.roll }
    history << @result
    if dice_list.length == 0
      puts "You didn't add any dice."
      return score
    elsif dice_list.length == 1
      puts "You rolled a #{@result[0]}!"
      score << @result
    else
      puts "You rolled #{@result.sum} in total!"
      score << @result.sum
    end
    score
  end

end