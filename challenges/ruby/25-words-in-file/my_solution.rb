
# Pseudocode
# 1. Solucion Inicial

# Pseudocode

# 1. Solucion Inicial
require 'pry'

def most_common_words(filename, num)
	text = File.readlines(filename)
	text_in_words = words_from_lines(text)
	ocurrences = ocurr(text_in_words)
	final_words = max_ocurr(ocurrences,num).flatten
	binding.pry
	count = 1+final_words.length/2
	

	count.times do |i|
		puts "#{final_words[i]} : #{final_words[i+1]} ocurrences"
		
	end
	
end
def ocurr(text)
	new_item = []
	ocurrences = []
	text.each do |item,i|
		unless new_item == item
			new_item = item
			ocurrences << {item => text.count(item)}
		end
	end
	hash_ocurrences = ocurrences.reduce Hash.new, :merge
end

def max_ocurr(ocurr_text,n)
	sorted = ocurr_text.sort_by {|_key, value| value}
	max_ocurr = []
	n.times do |i|
		max_ocurr << sorted[-1-i]
	end 
	max_ocurr
end

def words_from_lines(text)
	accu2 = text.reduce([]) do |accu, line|
		unless line == "\n"
			accu << line.split( )				
		end	
		accu
	end
	accu2 = accu2.flatten.reduce ([]) { |accu, item| 
		if item.length > 2
			accu << item
		end
		accu
	}
	accu2
end

def prueba ()
	test = ["Today is the funniest day of the week"," Such a beutifull girl is my cousin", "There is no difference between an a you and me"]
	test = test.split( )
	accu2 = test.reduce ([]) do |accu, item|
		unless item.length < 2 || item =~ /\b(at|in|of)/
			accu << item
		end
	end
end
filename ='./source.txt'
num = 20
p most_common_words(filename,num)
#most_common_words('some_file.txt', 3) # imprime:




