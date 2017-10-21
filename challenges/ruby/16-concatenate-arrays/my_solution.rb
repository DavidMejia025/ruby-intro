=begin # Concatenate Two Arrays
## Resumen
Define un metodo `array_concat` el cual tome dos 
`Arrays` como argumentos y devuelva un solo `Array` 
producido por concatener los argumentos.

Por ejemplo,

```ruby
array_concat([1,2,3], [4,5,6])   # => [1,2,3,4,5,6]
array_concat([10, 4], ["apple"]) # => [10, 4, "apple"]
```
=end
def array_concat(arr1,arr2)
	lenght_times = arr1.size+arr2.size
	array = []
	lenght_times.times do |i|
		arr1.size>i ? array = array<<arr1[i] : array = array<<arr2[i-arr1.size]
	end
	array
end
#p array_concat([5,4,8],[3,8,7])#



# Tu solucion abajo:
