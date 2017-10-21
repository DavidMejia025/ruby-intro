





# Tu solucion abajo:

def leap_year?(año)

if año%4 == 0 && (año%100 != 0 ||año%400 == 0  )
	true
else
	false
end
end