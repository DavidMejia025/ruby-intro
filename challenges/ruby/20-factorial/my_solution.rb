# Factorial
=begin ## Resumen
Escribe un metodo llamado `factorial` el cual reciba
 como argumento un integer no negativo y que calcule 
 el factorial de ese numero.

El factorial de un numero es el producto de todos los 
integers desde `1` hasta el numero. Por ejemplo:

```ruby
factorial(5) == 5 * 4 * 3 * 2 * 1 == 120
```

El factorial de `0` esta definido como `1`.

Mira [Factorial en Wikipedia](http://en.wikipedia.org/wiki/Factorial) para mas informacion.
=end
# Tu solucion abajo:
def factorial(num)
	factor = [1]
	fact = 1
	if num == 0
		factor
	else
		num.times do |iter|
			fact << iter+1
			p fact
			p iter
		end

		fact.each do |item|
			factor = fact * item
		end
		factor = factor-1
	end
end
p factorial(10)