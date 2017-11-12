class Manager < ActiveRecord::Base

  has_many :chuzos, foreign_key: :boss_id, class_name: "Store"
  has_many :products, through: :stores

  # Getter
  def stores
    # fsdfsdf
  end

  # Setter
  def stores=(store)

  end

end










































# class Manager < ActiveRecord::Base
#   has_many :stores
#   has_many :products, through: :stores

#   # m = Manager.first
#   # m.products
#   def products
#     products = stores.map do |store|
#       store.products
#     end
#     products.flatten
#   end

#   # #es realmente
#   # def stores
#   #   Store.where(manager_id: self.id)
#   # end

#   # has_many :products, through: :stores
#   # # es realmente
#   # # def products
#   # #   self.stores.map {|store| store.products }.flatten
#   # # end

#   # es realmente en SQL
#   # <<-SQL
#   #   SELECT products.*
#   #   FROM products
#   #   JOIN stores on (stores.id = products.store_id)
#   #   WHERE stores.manager_id = 5
#   # SQL
# end
