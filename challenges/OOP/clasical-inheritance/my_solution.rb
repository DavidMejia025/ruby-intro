module Superpowers
	def x_rays
		puts "I can cut things with my X_rays"
	end

	def invisibility
		puts "I can hide from everyone"
	end

	def Ice
		puts "Im freezing and I can freezee you"
	end
end

class Animal
	attr_reader
	def initialize(name)
		@name = name
	end

	def alive? 
		true
	end
end

class Mammal < Animal
	attr_reader :name, :milk
	def initialize(name)
		@name = name
		@milk = true
	end

	def milk_production
		@milk
		"I drink milk from my mom."
	end

	def reproduction
		puts "reproduction viviparid"
	end
end

class Amphibian < Animal	
	attr_reader
	def initialize(name)
		@name = name
	end

	def skin
		puts "toxic skin"
	end

end

class Primate < Mammal
	attr_accessor :name, :num_legs
	def initialize(name)
		@name = name
		@num_legs = 2
	end

	def legs 
		@legs = 2
	end
end

class Frog < Amphibian
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def motion 
		"Jump"
	end
end

class Bat < Mammal		
	#include Superpowers	
	attr_reader :name
	def initialize(name)
		@name = name
	end

	def motion
		puts "Fly"
	end
end

class Chimpanzee < Primate
	include Superpowers
	attr_accessor :name 
	def initialize(name)
		@name = name
		super(name)
	end

	def motion
		puts "walk"
	end
end

oru = Mammal.new("Oru")
p oru.milk_production
#mybat.invisibility
