require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'When #factorial method is called' do
    it 'should return the factorial of N' do
      expect(@solver.factorial(3)).to eq 6
    end
    it 'should return 1 for the factorial of 0' do
      expect(@solver.factorial(0)).to eq 1
    end
    it 'should raise exception if non postive number is given' do
      expect do
        @solver.factorial(-1)
      end.to raise_error('NegativeNumberFactorialError')
    end
  end
end
