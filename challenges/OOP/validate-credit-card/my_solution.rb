
require'pry'
# 2. Solucion con Refactor

  class CreditCard
    def initialize(card)
      @card = card
      check_error
    end 

    def check_error
      creditCard = @card
      creditCard.to_s
      new_creditCard = creditCard.to_s
      new_creditCard = new_creditCard.split('').map(&:to_i)
      if new_creditCard.length>16 || new_creditCard.length<16
        raise ArgumentError.new("Wrong amount of numbers")
      end
    end

    def double_card()
      creditCard = @card
      creditCard.to_s
      new_creditCard = creditCard.to_s
      new_creditCard = new_creditCard.split('').map(&:to_i)
      new_creditCard = new_creditCard.map.with_index(1) do |item,index|
        if index.odd?
          item * 2
        else
          item
        end
      end
      @card = new_creditCard
    end

    def sum_card()
      new_creditCard = @card
      sum_credit_card = []
      new_creditCard.each.with_index(1) do |item, index|
        if index.odd?
          #binding.pry
          if item >=10
            item = split(item)
          elsif new_creditCard[index] >=10
            new_creditCard[index] = split(new_creditCard[index])
          end
          sum_credit_card << item + new_creditCard[index]
        end   
      end
      @card = sum_credit_card
    end

    def split(num)
      num%10+num/10
    end

    def check_card ()
        @card = double_card()
        @card = sum_card
       if @card.inject(0){|sum,x| sum+x}%10 == 0
          true
          #binding.pry
        else
          false
        end
    end
  end 


 p card_david = CreditCard.new(5275026787363359)
 p card_david = card_david.check_card()

# def multiply_2 (creditCard)
#   creditCard.to_s
#   new_creditCard = creditCard.to_s
#   new_creditCard = new_creditCard.split('').map(&:to_i)
#   new_creditCard = new_creditCard.map.with_index(1) do |item,index|
#   	if index.odd?
#   		  item * 2
#   	else
#   		 item
#   	end
#   end
#   new_creditCard
  
#   sum_credit_card = []
#   new_creditCard.each.with_index(1) do |item, index|

#     if index.odd?
#       #binding.pry
#       if item >=10
#         item = split(item)
#       elsif new_creditCard[index] >=10
#         new_creditCard[index] = split(new_creditCard[index])
#       end
#       sum_credit_card << item + new_creditCard[index]
#     end   
#   end
  
#   if sum_credit_card.inject(0){|sum,x| sum+x}%10 == 0
#     "El numero de la tarjeta de credito es valida"
#   else
#     "El numero de la tarjeta de credito es invalida"
#   end
# end

# def split(num)
#    num%10+num/10
# end

# # p multiply_2(5674) == [10,6,14,4]
#  # p multiply_2(5410200062548641) 

# ###### DRIVER CODE #########
