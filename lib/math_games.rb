class MathGames
	def self.fib(n)
		raise "parametro < 0" if n < 0
		if n > 1
			fib(n-1) + fib(n-2)
		else
			n
		end				
	end

	def self.fact(n)
		raise "parametro < 0" if n < 0
		if n > 0
			n * fact(n-1)
		else
			1
		end	
	end			
end

