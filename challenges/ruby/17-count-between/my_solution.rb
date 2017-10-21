=begin # Count Between
## Resumen
Escribe un metodo `count_between` el cual reciba 3 
argumentos como input:

1. Un `Array` de integers
2. Un integer que sea el limite inferior
3. Un intefer que sea el limite superior

`count_between` debe devolver el numero de integers dentro
 del `Array` que esten dentro de los dos limites, incluyendo
  los limites.

Debe devolver `0` si el `Array` esta vacio.

Algunos Ejemplos:

```ruby
count_between([1,2,3], 0, 100)      # => 3
count_between([-10, 1, 2], 0, 100)  # => 2
count_between([10, 20, 30], 10, 30) # => 3
count_between([], -100, 100)        # => 0
count_between([0], 0, 0)            # => 1
=end
# Tu solucion abajo:
def count_between (array, l_inf, l_sup)
	if array == []
		0
	else
		count = 0
		array.each do |item|
			if item <= l_sup && item >= l_inf
				count +=1
			end
		end
		count
	end
end
