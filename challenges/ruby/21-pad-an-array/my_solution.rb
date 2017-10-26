# Mi solucion abajo

# El argumento debe ser no negativo
# Leer el arreglo de entrada y comparar su longitud con el numero de entrada

# i la longitud del array es menor al tamaño minimo, `pad` debe devolver 
#  un nuevo arreglo igual al arreglo original. Los espacios faltantes se deben 
#  completar con nil.
# Si entre los argumentos esta una cadena con la cual se deba completar
#  el arreglo hacerlo.
# Si el tamaño minimo es menor o igual a la ongitud del array, el 
#  metodo debe devolver el array.

def pad(array, num, option = nil)
	unless num >= 0
		return []
	end

	diff_long = - array.length + num

	case 
	when diff_long <= 0
		array
	when diff_long > 0
		index_0 = array.length
		diff_long.abs.times do |i|
			array[index_0 + i] = option
		end
		out = array
	end
end

def pad!(array, num, option = nil)
	unless num >= 0
		return []
	end

	diff_long = - array.length + num

	case 
	when diff_long <= 0
		array
	when diff_long > 0
		index_0 = array.length
		diff_long.abs.times do |i|
			array[index_0 + i] = option
		end
		array
	end
	array
	array 
end
array = [1,2,3]
p array
p a = pad(array, 5,10)
p array
p pad!(array, 1)
p array
# p pad!(array, 0) 
# p array

