# Pretty Triangle
## Resumen
=begin 
Escribe un metodo 
`print_triangle` el cual tome como argumento un integer que
 representa el numero de filas que se tienen que imprimir.
  Este metodo debe imprimir un triangulo recto compuesto 
  de caracteres `*`.

Por ejemplo, `print_triangle(5)` debe imprimir:

```text
*
**
***
****
*****
```

Y `print_triangle(2)` Debe imprimir:

```text
*
**
```

Si pasamos `0` como argumento no debe imprimir nada, 
(ni siquiera una linea vacia).
=end
# Tu solucion abajo:
def print_triangle (num_filas)
	if num_filas > 0
		container_def = ""
		num_filas.times do |iter|
			container_def << "*"
		end
		container_def.size.times do |index|
			puts "#{container_def[0..index]}"
		end
	end
end

