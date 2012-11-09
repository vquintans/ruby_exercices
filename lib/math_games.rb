class MathGames

def self.fib(n)
	raise "Argumento incorrecto" unless n >= 0
	if (n < 2) then
	  n 
	else
	  fib(n-1) + fib(n-2)
	end
end

def self.fact(n)
	raise "Argumento incorrecto" unless n >= 0
	if (n == 0) then  
		1 
	else
		n*fact(n-1)
	end
end

end