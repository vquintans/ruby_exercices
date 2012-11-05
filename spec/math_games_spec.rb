
require 'spec_helper.rb'

describe MathGames do
  
  describe '.fib' do
    it 'devuelve 0 para fib(0)' do
      MathGames.fib(0).should == 0
    end
    it 'devuelve 1 para fib(1)' do
      MathGames.fib(1).should == 1
    end
    it 'devuelve f(n-1) + f(n-2) para n>1' do
      MathGames.fib(8).should == 21
    end
    it 'lanza excepcion si n < 0' do
      expect{ MathGames.fib(-1) }.to raise_error(RuntimeError)
    end
  end


  describe '.fact' do
    it 'devuelve 1 para fact(0)' do
      MathGames.fact(0).should == 1
    end
    it 'devuelve factorial de n para n > 0' do
      MathGames.fact(30).should == 265252859812191058636308480000000
    end
    it 'lanza excepcion si n <0' do
      expect{ MathGames.fact(-1) }.to raise_error(RuntimeError)
    end
  end

end


