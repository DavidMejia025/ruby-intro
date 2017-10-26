require 'pry'

class Animal
  attr_reader :alive
  def initialize(alive)
    @alive = alive
  end

  def name
    @name
  end
end

class Dog < Animal
  include Swimable

  def initialize(name, alive, lung_capacity)
    super(alive)
    @name = name
    @lung_capacity = lung_capacity
  end
end

class Cat < Animal
  def initialize(name)
    @name = name
  end
end

class Fish < Animal
  include Swimable # Esto lo incluye como metodos de instancia
  # extend Swimable # Esto lo inlcuye como metodos de clase

  # Named Arguments
  def initialize(options)
    @name = options[:name]
    @spines = options.fetch(:spines) { true  }
    @species = options[:species]
    @lung_capacity = options[:lung_capacity] || 10
    self.swimming_speed = options[:swimming_speed]
  end
end


module Swimable
  def swimming
    'Splshhhhhs'
  end

  def time_under_water
    @lung_capacity * 0.8 * 3600
  end

  def swimming_speed=(speed)
    @swimming_speed = speed
  end

  def swimming_speed
    @swimming_speed
  end
end


# Namespace


tobias = Dog.new('tobias', true, 2)
garfield = Cat.new('Garfield')
nemo = Fish.new({name: 'Nemo', species: 'Clown Fish', swimming_speed: 100})
eel = Fish.new({name: 'electrica', species: 'eel', swimming_speed: 100, spines: false})

nemo.time_under_water => 23542353425


Fish.time_under_water


