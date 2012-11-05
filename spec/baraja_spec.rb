# encoding: UTF-8

require 'spec_helper.rb'

describe Baraja do 
  let(:as_de_oros) { Carta.new(:oros,1) }
  let(:as_de_copas) { Carta.new(:copas,1) }
  let(:as_de_bastos) { Carta.new(:bastos,1) }
  let(:as_de_espadas) { Carta.new(:espadas,1) }
  let(:tres_de_oros) { Carta.new(:oros,3) }
  let(:tres_de_copas) { Carta.new(:copas,3) }
  let(:tres_de_bastos) { Carta.new(:bastos,3) }
  let(:tres_de_espadas) { Carta.new(:espadas,3) }
  let(:cinco_de_oros) { Carta.new(:oros,5) }
  let(:cinco_de_copas) { Carta.new(:copas,5) }
  let(:cinco_de_bastos) { Carta.new(:bastos,5) }
  let(:cinco_de_espadas) { Carta.new(:espadas,5) }


  describe '#cartas' do
    it 'devuelve un array con las cartas de la baraja' do
      Baraja.new(as_de_oros, as_de_copas, as_de_bastos).cartas.include?(:as_de_oros)
    end
  end

  describe '.initialize' do
    context 'cuando se le pasa un array de cartas' do
      it 'crea una baraja con las cartas indicadas' do
        Baraja.new(as_de_oros, as_de_copas, as_de_bastos).numero_de_cartas.should == 3
      end
    end
    context 'sin argumentos' do
      it 'crea una baraja vacia' do
        Baraja.new.numero_de_cartas.should == 0
      end
    end
  end

  describe '#numero de cartas' do
    it 'devuelve el numero de cartas que contiene la baraja' do
        Baraja.new(as_de_oros, as_de_copas, as_de_bastos).numero_de_cartas.should == 3
    end
  end

  describe '#contiene_carta?' do
    it 'devuelve true si la baraje contiene la carta indicada' do
      Baraja.new(as_de_copas).contiene_carta?(as_de_copas).should be_true
    end
  end

  describe '#add_carta' do
    it 'añade la carta indicada a la baraja' do
      baraja = Baraja.new
      baraja.add_carta(as_de_oros)
      baraja.contiene_carta?(as_de_oros).should be_true
    end
  end

  describe '.completa' do
    it 'devuelve una baraja con todas las cartas de cada palo' do
      Baraja.completa.numero_de_cartas == 12*4
    end
  end

  describe '#to_s' do
    it 'devuelve un string con las cartas en el orden adecuado' do 
      Baraja.new.to_s.should == ''
      Baraja.new(as_de_oros).to_s.should == '1 de oros'
      Baraja.new(as_de_oros, tres_de_bastos).to_s.should == "1 de oros\n3 de bastos"
      Baraja.new(as_de_oros, tres_de_bastos, cinco_de_espadas).to_s.should == "1 de oros\n3 de bastos\n5 de espadas"
    end
  end

  describe '#ordenada' do
    it 'devuelve una nueva baraja con las mismas cartas ordenadas en funcion del valor de las cartas' do
      Baraja.new(cinco_de_bastos, tres_de_bastos, as_de_copas, tres_de_oros, cinco_de_espadas).ordenada.to_s.should == "3 de oros\n1 de copas\n3 de bastos\n5 de bastos\n5 de espadas"
    end
  end

  describe '#barajada' do
    it 'devuelve una nueva baraja desordenada' do
      Baraja.completa.barajada.to_s.should_not == Baraja.completa.to_s
    end
    it 'contiene todas las cartas de la baraja inicial' do
      completa = Baraja.completa
      desordenada = completa.barajada
      completa.cartas.each{|carta| desordenada.include?(carta)}
    end
    it 'no contiene mas cartas que la baraja inicial' do
      completa = Baraja.completa
      desordenada = completa.barajada
      desordenada.cartas.each{|carta| completa.cartas.include?(carta)}

    end
  end 

end

