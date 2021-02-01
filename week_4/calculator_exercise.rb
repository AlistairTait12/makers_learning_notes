# Refactor the methods in the Calculator example into two classes as you see fit.
# 
# class Calculator
#   def add(number_1, number_2)
#     number_1 + number_2
#   end

#   def subtract(number_1, number_2)
#     number_1 - number_2
#   end

#   def print_answer(answer)
#     "The Answer is: #{ answer }"
#   end
# end

class Addition
  def initialize(*numbers)
    @numbers = numbers
  end

  def answer
    @numbers.sum
  end

  def print_answer
    "The Answer is: #{answer}"
  end
end

class Subtraction
  def initialize(a, b)
    @a = a
    @b = b
  end

  def answer
    @a - @b
  end

  def print_answer
    "The Answer is: #{answer}"
  end
end