class Carta

	attr_accessor :palo, :valor

	@@palos = [:oros, :copas, :bastos, :espadas]

	def initialize(palo, numero)
		raise "Palo incorrecto" unless @@palos.index(palo)
		raise "Valor incorrecto" unless (numero > 0 && numero < 13)
		@palo = palo
		@valor = numero
	end

	def mayor_que? (otra_carta)
		if (@palo == otra_carta.palo)
			@valor <= otra_carta.valor
		else
			@@palos.index(@palo) <= @@palos.index(otra_carta.palo)
		end
	end

	def <=>(otra_carta)
		if (@palo == otra_carta.palo)
			if (@valor > otra_carta.valor) 
				1
			elsif (@valor < otra_carta.valor) 
				-1
			else 
				0
			end
		else
			if (mayor_que? otra_carta) 
				-1
			else
				1
			end
		end
	end

	def to_s
		@valor.to_s + " de " + @palo.to_s
	end

end
