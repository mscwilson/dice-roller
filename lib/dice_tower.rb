require "dice"

class DiceTower

  def roll_dice(roll_this_many_times)
    result =[]
    die = Dice.new
    roll_this_many_times.times { result << die.roll }
    result
  end

end