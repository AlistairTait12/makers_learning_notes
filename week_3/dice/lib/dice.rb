class Dice
  def roll
    rand(1..6)
  end

  def multi_roll(n_of_rolls)
    rolls = []
    n_of_rolls.times {rolls.push(roll)}
    rolls
  end
end