class Solver
  def factorial(number)
    number.negative? ? (raise StandardError, 'NegativeNumberFactorialError') : (1..number).reduce(1, :*)
  end

  def reverse(word)
    word.instance_of?(String) ? word.reverse : (raise StandardError, 'Word Not A String Error')
  end

  def fizzbuzz(number)
    if (number%3).zero?
      'fizz'
    elsif (number%5).zero?
      'buzz'
    end
  end
end
