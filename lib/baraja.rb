class Baraja
	
	attr_reader :cartas

	def initialize(*cartas)
		@cartas = *cartas
	end

	def numero_de_cartas
		@cartas.length
	end

	def contiene_carta?(c)
		@cartas.include?(c)
	end

	def add_carta(c)
		@cartas += [ c ]
	end

	def self.completa
		mazo = []
		Carta.palos.each do |palo|
			(1..12).each do |valor|
				mazo += [ Carta.new(palo, valor) ]
			end
		end
		Baraja.new(mazo)
	end

	def to_s
		s = ""
		@cartas.each do |carta|
			s += "#{carta.to_s}\n"
		end
		s[0..-2]
	end

	def ordenada
		Baraja.new(*(@cartas.sort))
	end

	def barajada
		Baraja.new(*(@cartas.reverse))
	end
end
