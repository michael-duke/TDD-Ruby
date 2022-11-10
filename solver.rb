class Solver
  def factorial(number)
    number.negative? ? (raise StandardError, 'NegativeNumberFactorialError') : (1..number).reduce(1, :*)
  end

  def reverse(word)
    word.instance_of?(String) ? word.reverse : (raise StandardError, 'Word Not A String Error')
  end
end
