# encoding: UTF-8

require 'spec_helper.rb'

describe Carta do 
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

  describe '#initialize' do
    context 'si se le pasa un palo erroneo' do
      it 'lanza una excepcion' do
        expect{ Carta.new(:noexiste,3) }.to raise_error
      end
    end

    context 'si se le pasa un valor erroneo' do
      it 'lanza una excepcion' do
        expect{ Carta.new(:oros,30) }.to raise_error
        expect{ Carta.new(:oros,0) }.to raise_error
        expect{ Carta.new(:oros,-3) }.to raise_error
      end
    end
  end


  describe '#palo' do
    it 'devuelve el palo de la carta' do
      as_de_oros.palo.should == :oros
      as_de_copas.palo.should == :copas
      as_de_bastos.palo.should == :bastos
      as_de_espadas.palo.should == :espadas
    end
  end

  describe '#valor' do
    it 'devuelve el valor de la carta' do
      as_de_oros.valor.should == 1
      tres_de_copas.valor.should == 3
    end
  end


  describe 'mayor_que?' do
    context 'cuando se le pasan dos cartas del mismo palo' do
      it 'devuelve true si la carta actual es mayor que la que se le pasa' do
        as_de_oros.mayor_que?(tres_de_oros).should be_true
        tres_de_oros.mayor_que?(cinco_de_oros).should be_true
      end
      it 'devuelve false si la carta actual es menor o igual que la que se le pasa' do
        tres_de_oros.mayor_que?(as_de_oros).should be_false
      end
    end
    context 'cuando se le pasan dos cartas de distinto palo' do
      it 'oros mayor que copas' do
        as_de_oros.mayor_que?(as_de_copas).should be_true
      end
      it 'copas mayor que bastos' do
        as_de_copas.mayor_que?(as_de_bastos).should be_true
      end
      it 'bastos mayor que espadas' do
        as_de_bastos.mayor_que?(as_de_espadas).should be_true
      end
      it 'oros mayor que bastos' do
        as_de_oros.mayor_que?(as_de_bastos).should be_true
      end
      it 'oros mayor que espadas' do
        as_de_oros.mayor_que?(as_de_espadas).should be_true
      end
    end
  end

  describe '#<=>' do
    context 'cartas del mismo palo' do
      it 'debe devolver 1 si la carta que se le pasa es mayor' do
        tres_de_oros.<=>(as_de_oros).should == 1
      end
      it 'debe devolver 0 si la carta que se le pasa es igual' do
        tres_de_oros.<=>(tres_de_oros).should == 0
      end
      it 'debe devolver -1 si la carta que se le pasa es menor' do
        as_de_oros.<=>(tres_de_oros).should == -1
      end
    end
    context 'cartas de distinto palo' do
      it 'debe devolver -1 si la carta que se le pasa es mayor' do
        tres_de_copas.<=>(tres_de_oros).should == 1
      end
      it 'debe devolver 1 si la carta que se le pasa es menor' do
        as_de_oros.<=>(as_de_bastos).should == -1
      end
    end
  end

  describe '#to_s' do
    context 'as de oros' do
      it { as_de_oros.to_s.should == '1 de oros' }
    end
    context 'as de copas' do
      it { as_de_copas.to_s.should == '1 de copas' }
    end
    context 'as de bastos' do
      it { as_de_bastos.to_s.should == '1 de bastos' }
    end
    context 'as de espadas' do
      it { as_de_espadas.to_s.should == '1 de espadas' }
    end
    context 'tres de oros' do
      it { tres_de_oros.to_s.should == '3 de oros' }
    end
  end

end







