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
			(1..12).each {|i|  b.add_carta(Carta.new(palo, i)) }
		end

		b
	end

	def ordenada
		Baraja.new(@cartas.sort {|x,y| x<=>y} )
	end 

	def to_s
		ordenada.cartas * "\n" 
	end

	def barajada
		Baraja.new(@cartas.shuffle(random: Random.new(1)))
	end
end
