# Pseudocode
# ```text
# Script: CONVERT TO PIG LATIN

# Primera version: CONVERTIR SOLO UNA PALABRA

# GET una palabra de input del usuario.
# IF la palabra empieza con una vocal, no cambiarla.
# ELSE reemplaza la palabra con su equivalente pig latinizado
#   GET all of the consonantes before the first vowel in the word.
#   SET las consonantes al final de la palabra y agrega el sufijo `ay`.
# ENDIF
# PRINT la palabra pig latinizada.
# ```

require'pry'
# 1. Solucion Inicial

def pig_latin(palabra)
	unless palabra =~ /^[aeiou]+[\w+]+[\w+]/ 
		palabra
		paste_word(consonants(palabra))
	end
end


def consonants(word)
	vowel = false
	consonants = []
	new_word = []
	item = 0
	while (vowel == false)
		if word[item] =~ /[aeiou]/
			new_word << word[item..-1]
			vowel = true
		else
			consonants << word[item]
			item = item + 1
			consonants
		end
		consonants
	end
	consonants = new_word << consonants
	consonants.flatten << "ay"
end

def paste_word(array)
	index = 1
	while index < array.length
		array[0]<<array[index]
		index += 1
	end
	array[0]
end
# 2. Solucion con Refactor

###### DRIVER CODE #########

p pig_latin("plnnnnnnindromanias")
p pig_latin("banana") # = "ananabay"
p pig_latin("trash")# = "ashtray"
p pig_latin("happy")# = "appyhay"
p pig_latin("duck") #= "uckday"