# Pseudocode

# 1. Recibir el arreglo y ordenarlo de forma descendente
# 2. Evaluar la ocurrencia de la posicion actual
# 3. Guardarla en el hash de key value.
# 4. saltarce todos los items iguales y volver al paso 2.
# 5. encuentra el valor de mayor frecuencia


require'pry'
# 1. Solucion Inicial
def mode(array)
	search_array = array.sort
	new_item = []
	max_ocurrences = []
	ocurrences = []
	search_array.each do |item,i|
		unless new_item == item
			new_item = item
			ocurrences << {item => search_array.count(item)}
		end
	end
	hash_ocurrences = ocurrences.reduce Hash.new, :merge
	max = hash_ocurrences.values.max                   # we're only interested in the key(s) with the highest frequency
    hash_ocurrences.select { |k, f| f == max }.keys
end

p mode([1,2,3,3])         # => [3]
p mode([4.5, 0, 0])       # => [0]
p mode([1.5, -1, 1, 1.5]) # => [1.5]
p mode([1,1,2,2])         # => [1,2]
p mode([1,2,3])           # => [1,2,3], por que todos ocurren con la misma frecuencia
p mode(["who", "what", "where", "who"]) # => "who"
puts 
p mode([1,2,3,4,5,61,1,1,1,6,5,4,3,2])
# 2. Solucion con Refactor





###### DRIVER CODE #########
