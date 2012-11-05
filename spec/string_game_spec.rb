# encoding: UTF-8

require 'spec_helper.rb'

describe StringGame do 

  describe '#palindromo?' do
    it 'devuelve true solo si es igual a si misma al reves' do
      StringGame.new('a').palindromo?.should be_true 
      StringGame.new('ab').palindromo?.should be_false 
      StringGame.new('aba').palindromo?.should be_true 
    end
  end

  describe '#numero_de_letras' do
    it 'devuelve el numero de letras de la cadena' do
      StringGame.new('a').numero_de_letras.should == 1
      StringGame.new('abc').numero_de_letras.should == 3
      StringGame.new('áéíóú').numero_de_letras.should == 5
    end
  end

  describe '#numero_de_palabras' do
    it 'devuelve el numero de palabras de la cadena' do
      StringGame.new('una').numero_de_palabras.should == 1
      StringGame.new('dos palabras').numero_de_palabras.should == 2
      StringGame.new('y tres palabras').numero_de_palabras.should == 3
    end
  end

  describe '#pon_nombre' do
    it 'cambia la cadena "nombre" por el valor indicado' do
      StringGame.new('Hola nombre, vamos a jugar').pon_nombre('Vituco').should == 'Hola Vituco, vamos a jugar'
    end
  end

  describe '.saluda' do
    context 'cuando se le pasa un nombre' do
      it 'devuelve "Hola <nombre>!!!"' do
        StringGame.saluda('Vituco').should == 'Hola Vituco!!!'
        StringGame.saluda('Manuel').should == 'Hola Manuel!!!'
      end
    end
    context 'cuando se le pasa un array de nombres' do 
      it 'saluda a todos los nombres' do
        StringGame.saluda(%w(Vituco Iago Miguel)).should == 'Hola Vituco, hola Iago, hola Miguel'
      end
    end
  end

end