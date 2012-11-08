class StringGame
	
	def initialize(cadena)
		@str = String.new(cadena)
	end

	def palindromo?
		@str == @str.reverse
	end

	def numero_de_letras
		@str.length
	end

	def numero_de_palabras
		@str.split.length
	end

	def pon_nombre(nombre)
		@str.gsub("nombre", nombre)
	end

	def self.saluda(nombre)
		if tmp = Array.try_convert(nombre)
  			# the argument is an array
  			result = ""
  			
  			nombre.each {|n| result += ", hola " + n } 
  			result = result[2..-1]
  			result[0] = 'H'
  			result
  			
		elsif tmp = String.try_convert(nombre)
  			# the argument is a string
  			"Hola " + nombre + "!!!"
		end		
	end

end
