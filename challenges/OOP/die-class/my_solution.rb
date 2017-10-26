# Pseudocode

class Die
	def initialize(n)
		if n<1
			raise ArgumentError.new("No se puede crear ese dado")
		else
			@n  = n
		end
	end
	def sides
		@n
	end
	def roll
		rand(1..@n)

	end

end
#die = Die.new(-1)
# 1. Solucion Inicial






# 2. Solucion con Refactor





###### DRIVER CODE #########
