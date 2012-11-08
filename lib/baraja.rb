class Baraja

	attr_accessor :cartas

	def initialize(*cartas)
		@cartas = cartas
	end

	def numero_de_cartas
		@cartas.length
	end

	def contiene_carta?(carta)
		@cartas.include?(carta)
	end

	def add_carta(carta)
		@cartas.push(carta)
	end

	def self.completa
		b = Baraja.new()

		Carta.palos.each do |palo| 
			for i in 1..12 b.add_carta(Carta.new(palo, i))
		end

		#for i in 1..12		
		#	b.add_carta(Carta.new(:oros, i))
		#	b.add_carta(Carta.new(:copas, i))
		#	b.add_carta(Carta.new(:bastos, i))
		#	b.add_carta(Carta.new(:espadas, i))
		#end

		b
	end

	def ordenada
	end 
end
