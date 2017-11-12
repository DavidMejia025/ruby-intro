class House
  attr_reader :square_feet, :num_bedrooms, :num_baths, :cost

  def initialize(options)
    @address = options[:address]
    @name = options.fetch([:name]){"Berkeley"}
    @num_bedrooms = options[:num_bedrooms]
    @num_baths = options[:num_baths]
    @cost = options[:cost]
    @down_payment = options[:down_payment]
    @sold = options[:sold]
    @short_sale = options[:short_sale]
    @has_tenants = options[:has_tenants]
  end

  def obscure_address
    @address.sub(/\A\d*/, '****')
  end

  def buy!(money, good_credit)
    @sold = true if money >= down_payment && good_credit
  end

  def down_payment
    cost * @down_payment
  end

  def to_s
    "#{obscure_address} : #{square_feet} sq. ft., #{num_bedrooms} bed, #{num_baths} bath. $#{cost}"
  end
end


# Pon driver code aca para probar que todo este funcionando.
###### DRIVER CODE ########

new_class = House.new({num_baths: 4})
p new_class

