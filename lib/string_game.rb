class StringGame
	def initialize(s)
		@s = s
	end

	def palindromo?
		(@s == @s.reverse)? true : false
	end

	def numero_de_letras
		@s.length
	end

	def numero_de_palabras
		@s.scan(/(\w+)/).length
	end

	def pon_nombre(nombre)
		@s.sub("nombre", nombre)
	end

	def self.saluda(nombres)
		return "Hola #{nombres}!!!" if nombres.class != Array
		str = "Hola #{nombres.shift}"
		nombres.each { |n| str += ", hola #{n}" }
		str
	end
end
