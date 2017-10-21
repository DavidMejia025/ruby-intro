

# 2. Solucion con Refactor


def multiply_2 (creditCard)
  creditCard.to_s
  new_creditCard = creditCard.to_s
  new_creditCard = new_creditCard.split('').map(&:to_i)
  next_creditCard = []
  new_creditCard.each do |item|
  	if item.odd?
  		 next_creditCard << item * 2
  	else
  		next_creditCard << item
  	end
  end
  new_creditCard = new_creditCard.map do |item|
  	if item.odd?
  		  item * 2
  	else
  		 item
  	end
  end
  next_creditCard
end

p multiply_2(1234123434564589)

###### DRIVER CODE #########
