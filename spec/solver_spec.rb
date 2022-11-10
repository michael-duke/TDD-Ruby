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

  context 'When #reverse method is called' do
    it 'should return the string reverse' do
      expect(@solver.reverse('hello')).to match('olleh')
    end
    it 'should return the empty string when empty string is given' do
      expect(@solver.reverse('')).to match('')
    end
    it 'should raise an error when given another datatype other than a string' do
      expect do
        expect(@solver.reverse(21))
      end.to raise_error('Word Not A String Error')
      expect do
        expect(@solver.reverse(['Hello', 'There!', 'Andor']))
      end.to raise_error('Word Not A String Error')
      expect do
        expect(@solver.reverse({ name: 'Samiullah', spec: 'RSpec' }))
      end.to raise_error('Word Not A String Error')
    end
  end
end
