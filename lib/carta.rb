class Carta
	@@palos = [ :oros, :copas, :bastos, :espadas ]

	attr_reader :palo, :valor

	def initialize(palo, valor)
		raise "Palo incorrecto" if !@@palos.include?(palo)
		raise "Valor incorrecto" if (valor.class != Fixnum || valor < 1 || valor > 12)
		@palo = palo
		@valor = valor
	end

	def self.palos
		@@palos
	end
	
	def mayor_que?(o)
		return (@valor < o.valor) if (@palo == o.palo)
		return (@@palos.index(@palo) < @@palos.index(o.palo))
	end

	def <=>(o)
		esta_mayor = self.mayor_que?(o)
		otra_mayor = o.mayor_que?(self)
		return 1 if otra_mayor
		return -1 if esta_mayor
		return 0
	end

	def to_s
		"#{@valor} de #{@palo}"
	end
end
