class Solver
  def factorial(number)
    number.negative? ? (raise StandardError, 'NegativeNumberFactorialError') : (1..number).reduce(1, :*)
  end
end
